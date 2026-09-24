<?php
// includes/db_config.example.php
//
// TEMPLATE — file ini AMAN untuk ikut di GitHub (tidak berisi kredensial asli).
//
// Cara pakai di server (BUKAN lewat GitHub/Git — isi langsung di cPanel File
// Manager, supaya kredensial asli tidak pernah lewat repository):
//   1. Di cPanel File Manager, masuk ke folder includes/
//   2. Copy file ini, ganti nama jadi db_config.php
//   3. Isi 4 nilai di bawah dengan kredensial database yang didapat dari
//      cPanel > MySQL Databases (Database Name, Username, Password, biasanya
//      Host tetap "localhost" untuk shared hosting)
//
// includes/db_config.php sudah masuk .gitignore, jadi tidak akan pernah
// ter-commit atau ter-push ke GitHub.

define('DB_HOST', 'localhost');
define('DB_NAME', 'namacpanel_tbsatrad204');
define('DB_USER', 'namacpanel_tbuser');
define('DB_PASS', 'ISI_PASSWORD_DATABASE_DISINI');
