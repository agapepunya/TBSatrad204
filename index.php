<?php
require_once __DIR__ . '/includes/auth.php';
$page_title = 'Titik Bekal Satrad 204 Tarakan';
include __DIR__ . '/includes/header.php';
?>
<div class="landing">
  <div class="landing-box">
    <img src="/assets/img/logo-satrad204.png" alt="Logo Satrad 204 Tarakan" class="landing-logo">
    <h1>TITIK BEKAL<br>SATRAD 204 TARAKAN</h1>
    <p class="subtitle">Silakan pilih jenis akses Anda</p>
    <div class="landing-choices">
      <a class="choice-card" href="/admin/login.php">
        <span class="choice-label">Admin TB</span>
      </a>
      <a class="choice-card" href="/user/login.php">
        <span class="choice-label">Pengguna</span>
      </a>
    </div>
  </div>
</div>
<?php include __DIR__ . '/includes/footer.php'; ?>
