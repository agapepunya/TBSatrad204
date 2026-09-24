<?php
require_once __DIR__ . '/../includes/auth.php';
require_admin_login();

$page_title = 'Dashboard Admin TB';
include __DIR__ . '/../includes/header.php';
?>
<div class="app-shell">
  <header class="app-header">
    <div class="app-header-title">
      <img src="/assets/img/logo-satrad204.png" alt="Logo Satrad 204 Tarakan" class="app-header-logo">
      <strong>TITIK BEKAL</strong>
      <span class="app-header-badge">Halaman Admin</span>
    </div>
    <nav class="app-header-nav">
      <span>Halo, <?= htmlspecialchars($_SESSION['admin_username']) ?></span>
      <a href="/admin/settings.php">Pengaturan</a>
      <a href="/admin/logout.php">Keluar</a>
    </nav>
  </header>
  <main class="app-main">
    <p class="placeholder-note">Dashboard belum dibangun &mdash; menyusul.</p>
  </main>
</div>
<?php include __DIR__ . '/../includes/footer.php'; ?>
