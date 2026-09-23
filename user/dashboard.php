<?php
require_once __DIR__ . '/../includes/auth.php';
require_user_key();

$page_title = 'Dashboard Pengguna';
include __DIR__ . '/../includes/header.php';
?>
<div class="app-shell">
  <header class="app-header">
    <div class="app-header-title">
      <strong>Sistem Gudang</strong>
      <span class="app-header-badge">Halaman Pengguna</span>
    </div>
    <nav class="app-header-nav">
      <a href="/user/logout.php">Keluar</a>
    </nav>
  </header>
  <main class="app-main">
    <p class="placeholder-note">Dashboard belum dibangun &mdash; menyusul.</p>
  </main>
</div>
<?php include __DIR__ . '/../includes/footer.php'; ?>
