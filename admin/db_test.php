<?php
// admin/db_test.php — HALAMAN SEMENTARA untuk tes koneksi database.
// Aman dihapus kapan saja setelah tesnya berhasil; tidak dipakai fitur lain.

require_once __DIR__ . '/../includes/auth.php';
require_admin_login();
require_once __DIR__ . '/../includes/db.php';

$page_title = 'Tes Koneksi Database — Admin TB';
include __DIR__ . '/../includes/header.php';

function tampil_hasil($label, $callback) {
    echo '<div class="settings-section">';
    echo '<h3>' . htmlspecialchars($label) . '</h3>';
    try {
        $callback();
    } catch (Exception $e) {
        echo '<p style="color:#C00000;">Gagal: ' . htmlspecialchars($e->getMessage()) . '</p>';
    }
    echo '</div>';
}
?>
<div class="app-shell">
  <header class="app-header">
    <div class="app-header-title">
      <img src="/assets/img/logo-satrad204.png" alt="Logo Satrad 204 Tarakan" class="app-header-logo">
      <strong>TITIK BEKAL</strong>
      <span class="app-header-badge">Tes Database</span>
    </div>
    <nav class="app-header-nav">
      <a href="/admin/dashboard.php">Dashboard</a>
      <a href="/admin/logout.php">Keluar</a>
    </nav>
  </header>
  <main class="app-main" style="padding:24px;max-width:720px;margin:0 auto;width:100%;">
    <?php
    tampil_hasil('1. Koneksi Database', function () {
        get_pdo();
        echo '<p style="color:#1F7A1F;">Berhasil terhubung ke database.</p>';
    });

    tampil_hasil('2. Jumlah data per tabel', function () {
        $counts = array(
            'Dokumen Masuk' => db_fetch_one('SELECT COUNT(*) AS n FROM dokumen_masuk')['n'],
            'Barang'        => db_fetch_one('SELECT COUNT(*) AS n FROM barang')['n'],
            'Unit SN'       => db_fetch_one('SELECT COUNT(*) AS n FROM unit_sn')['n'],
            'Riwayat Barang'=> db_fetch_one('SELECT COUNT(*) AS n FROM riwayat_barang')['n'],
            'Relasi Barang-Dokumen' => db_fetch_one('SELECT COUNT(*) AS n FROM barang_dokumen')['n'],
        );
        echo '<table class="key-table"><tr><th>Tabel</th><th>Jumlah Baris</th></tr>';
        foreach ($counts as $label => $n) {
            $expect = array(
                'Dokumen Masuk' => 16, 'Barang' => 80, 'Unit SN' => 48,
                'Riwayat Barang' => 0, 'Relasi Barang-Dokumen' => 71,
            );
            $ok = $n == $expect[$label];
            $mark = $ok ? '&#10003;' : '&#9888; (harusnya ' . $expect[$label] . ')';
            echo '<tr><td>' . htmlspecialchars($label) . '</td><td>' . (int)$n . ' ' . $mark . '</td></tr>';
        }
        echo '</table>';
    });

    tampil_hasil('3. Contoh data (dari view v_barang_stok)', function () {
        $rows = db_fetch_all('SELECT kode_barang, nama_barang, pn, total_barang, jumlah_tersedia FROM v_barang_stok ORDER BY id LIMIT 5');
        echo '<table class="key-table"><tr><th>ID Barang</th><th>Nama</th><th>PN</th><th>Total</th><th>Tersedia</th></tr>';
        foreach ($rows as $r) {
            echo '<tr><td>' . htmlspecialchars($r['kode_barang']) . '</td><td>' . htmlspecialchars($r['nama_barang']) . '</td><td>' . htmlspecialchars($r['pn'] ?? '-') . '</td><td>' . (int)$r['total_barang'] . '</td><td>' . (int)$r['jumlah_tersedia'] . '</td></tr>';
        }
        echo '</table>';
    });
    ?>
    <p style="color:#808080;font-size:13px;margin-top:24px;">
      Halaman ini sementara untuk verifikasi setup database — aman dihapus (file
      <code>admin/db_test.php</code>) setelah dipastikan semua berhasil.
    </p>
  </main>
</div>
<?php include __DIR__ . '/../includes/footer.php'; ?>
