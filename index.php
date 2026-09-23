<?php
require_once __DIR__ . '/includes/auth.php';
$page_title = 'Sistem Gudang';
include __DIR__ . '/includes/header.php';
?>
<div class="landing">
  <div class="landing-box">
    <h1>Sistem Gudang</h1>
    <p class="subtitle">Silakan pilih jenis akses Anda</p>
    <div class="landing-choices">
      <a class="choice-card" href="/admin/login.php">
        <span class="choice-label">Admin Gudang</span>
      </a>
      <a class="choice-card" href="/user/login.php">
        <span class="choice-label">Pengguna</span>
      </a>
    </div>
  </div>
</div>
<?php include __DIR__ . '/includes/footer.php'; ?>
