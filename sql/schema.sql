-- =====================================================================
-- TITIK BEKAL SATRAD 204 TARAKAN — Skema Database
-- Struktur: Dokumen Masuk <-> Barang (per PN) -> Unit SN (per SN fisik)
--           + Riwayat Barang (log transaksi)
-- Jalankan file ini SEKALI lewat phpMyAdmin (Import) setelah database
-- kosong dibuat lewat cPanel > MySQL Databases.
-- =====================================================================

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ---------------------------------------------------------------------
-- 1. DOKUMEN MASUK — master dokumen (IP dll). 1 dokumen bisa dipakai
--    banyak Barang (relasi many-to-many lewat tabel barang_dokumen).
-- ---------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS dokumen_masuk (
  id             INT AUTO_INCREMENT PRIMARY KEY,
  kode_dokumen   VARCHAR(20)  NOT NULL UNIQUE,   -- mis. DOK-0001
  jenis_dokumen  VARCHAR(30)  DEFAULT NULL,      -- mis. IP, 40400, Surat Lain
  no_dokumen     VARCHAR(150) NOT NULL,
  file_pdf       VARCHAR(255) DEFAULT NULL,
  keterangan     TEXT         DEFAULT NULL,
  created_at     TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
  updated_at     TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ---------------------------------------------------------------------
-- 2. BARANG — master per PN / jenis barang. 1 baris = 1 card di sistem.
-- ---------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS barang (
  id            INT AUTO_INCREMENT PRIMARY KEY,
  kode_barang   VARCHAR(20)  NOT NULL UNIQUE,    -- mis. BRG-0001
  kategori      VARCHAR(60)  DEFAULT NULL,
  nama_barang   VARCHAR(255) NOT NULL,
  pn            VARCHAR(120) DEFAULT NULL,
  satuan        VARCHAR(30)  DEFAULT NULL,
  total_barang  INT          NOT NULL DEFAULT 0, -- total yang pernah diterima (baseline)
  kondisi       ENUM('S','US') DEFAULT NULL,
  foto_barang   VARCHAR(255) DEFAULT NULL,
  keterangan    TEXT         DEFAULT NULL,
  created_at    TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
  updated_at    TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_barang_pn (pn),
  INDEX idx_barang_kategori (kategori)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ---------------------------------------------------------------------
-- 3. BARANG_DOKUMEN — tabel penghubung many-to-many:
--    1 Barang bisa berasal dari beberapa Dokumen, 1 Dokumen bisa
--    mencakup beberapa Barang.
-- ---------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS barang_dokumen (
  barang_id   INT NOT NULL,
  dokumen_id  INT NOT NULL,
  PRIMARY KEY (barang_id, dokumen_id),
  FOREIGN KEY (barang_id)  REFERENCES barang(id)         ON DELETE CASCADE,
  FOREIGN KEY (dokumen_id) REFERENCES dokumen_masuk(id)  ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ---------------------------------------------------------------------
-- 4. UNIT_SN — 1 baris = 1 unit fisik / 1 SN, FK ke Barang.
--    1 Barang (PN) bisa punya banyak Unit SN.
-- ---------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS unit_sn (
  id                INT AUTO_INCREMENT PRIMARY KEY,
  kode_unit         VARCHAR(20)  NOT NULL UNIQUE,  -- mis. UNIT-0001
  barang_id         INT          NOT NULL,
  sn                VARCHAR(150) DEFAULT NULL,
  status            ENUM('Tersedia','Keluar','Dalam Perbaikan','Hilang') NOT NULL DEFAULT 'Tersedia',
  kondisi           ENUM('S','US') DEFAULT NULL,
  tanggal_diterima  DATE         DEFAULT NULL,
  foto_sn_pn        VARCHAR(255) DEFAULT NULL,
  keterangan        TEXT         DEFAULT NULL,
  created_at        TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
  updated_at        TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (barang_id) REFERENCES barang(id) ON DELETE CASCADE,
  INDEX idx_unit_barang (barang_id),
  INDEX idx_unit_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ---------------------------------------------------------------------
-- 5. RIWAYAT_BARANG — log setiap pergerakan barang.
--    FK wajib ke Barang, FK opsional ke Unit SN (kalau barang bertipe
--    serial dan SN-nya sudah ditentukan saat keluar/masuk).
-- ---------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS riwayat_barang (
  id                 INT AUTO_INCREMENT PRIMARY KEY,
  kode_riwayat       VARCHAR(20)  NOT NULL UNIQUE,   -- mis. RWY-0001
  barang_id          INT          NOT NULL,
  unit_id            INT          DEFAULT NULL,
  tanggal            DATE         DEFAULT NULL,
  jenis_aktivitas    VARCHAR(50)  NOT NULL,           -- Masuk Awal, Keluar - Pemakaian, dst.
  jumlah             INT          NOT NULL DEFAULT 1,
  tujuan             VARCHAR(255) DEFAULT NULL,        -- satuan/tujuan pemakaian
  no_surat           VARCHAR(150) DEFAULT NULL,
  file_surat         VARCHAR(255) DEFAULT NULL,
  kondisi_saat_itu   ENUM('S','US') DEFAULT NULL,
  diinput_oleh       VARCHAR(120) DEFAULT NULL,
  keterangan         TEXT         DEFAULT NULL,
  created_at         TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (barang_id) REFERENCES barang(id)   ON DELETE CASCADE,
  FOREIGN KEY (unit_id)   REFERENCES unit_sn(id)   ON DELETE SET NULL,
  INDEX idx_riwayat_barang (barang_id),
  INDEX idx_riwayat_tanggal (tanggal)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ---------------------------------------------------------------------
-- VIEW: v_barang_stok — Jumlah Tersedia dihitung otomatis dari
-- Total Barang dikurangi "Keluar...", ditambah "Masuk Kembali...".
-- Tidak disimpan sebagai kolom supaya tidak pernah "nyasar" beda
-- dengan Riwayat — selalu dihitung ulang tiap dibaca.
-- ---------------------------------------------------------------------
CREATE OR REPLACE VIEW v_barang_stok AS
SELECT
  b.*,
  (b.total_barang
    - COALESCE(SUM(CASE WHEN r.jenis_aktivitas LIKE 'Keluar%' THEN r.jumlah ELSE 0 END), 0)
    + COALESCE(SUM(CASE WHEN r.jenis_aktivitas LIKE 'Masuk Kembali%' THEN r.jumlah ELSE 0 END), 0)
  ) AS jumlah_tersedia,
  (SELECT COUNT(*) FROM unit_sn u WHERE u.barang_id = b.id) AS jumlah_sn_tercatat
FROM barang b
LEFT JOIN riwayat_barang r ON r.barang_id = b.id
GROUP BY b.id;

SET FOREIGN_KEY_CHECKS = 1;
