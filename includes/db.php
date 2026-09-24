<?php
// includes/db.php — koneksi PDO ke database MySQL.
//
// Kredensial asli diambil dari includes/db_config.php (TIDAK ikut Git —
// dibuat langsung di server lewat cPanel File Manager, lihat
// includes/db_config.example.php untuk contoh isiannya).

if (!file_exists(__DIR__ . '/db_config.php')) {
    http_response_code(500);
    die(
        '<div style="font-family:Arial,sans-serif;max-width:640px;margin:60px auto;' .
        'padding:24px;border:1px solid #f5c2c7;background:#f8d7da;color:#842029;' .
        'border-radius:8px;">' .
        '<strong>Konfigurasi database belum ada.</strong><br><br>' .
        'File <code>includes/db_config.php</code> belum dibuat di server. ' .
        'Salin <code>includes/db_config.example.php</code> menjadi ' .
        '<code>includes/db_config.php</code> lewat cPanel File Manager, lalu isi ' .
        'dengan kredensial database (Database Name, Username, Password) dari ' .
        'cPanel &gt; MySQL Databases.' .
        '</div>'
    );
}

require_once __DIR__ . '/db_config.php';

function get_pdo() {
    static $pdo = null;
    if ($pdo === null) {
        $dsn = 'mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=utf8mb4';
        try {
            $pdo = new PDO($dsn, DB_USER, DB_PASS, array(
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::ATTR_EMULATE_PREPARES => false,
            ));
        } catch (PDOException $e) {
            http_response_code(500);
            die(
                '<div style="font-family:Arial,sans-serif;max-width:640px;margin:60px auto;' .
                'padding:24px;border:1px solid #f5c2c7;background:#f8d7da;color:#842029;' .
                'border-radius:8px;">' .
                '<strong>Gagal terhubung ke database.</strong><br><br>' .
                'Periksa kembali isi <code>includes/db_config.php</code> (nama database, ' .
                'username, password) sesuai cPanel &gt; MySQL Databases.' .
                '</div>'
            );
        }
    }
    return $pdo;
}

// ---------- Helper query pendek (dipakai di halaman-halaman admin/pengguna) ----------

function db_query($sql, $params = array()) {
    $stmt = get_pdo()->prepare($sql);
    $stmt->execute($params);
    return $stmt;
}

function db_fetch_all($sql, $params = array()) {
    return db_query($sql, $params)->fetchAll();
}

function db_fetch_one($sql, $params = array()) {
    $row = db_query($sql, $params)->fetch();
    return $row === false ? null : $row;
}
