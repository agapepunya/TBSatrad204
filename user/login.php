<?php
require_once __DIR__ . '/../includes/auth.php';

$error = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $input_key = trim($_POST['access_key'] ?? '');
    $keys = get_keys();
    $found = null;
    foreach ($keys as $k) {
        if (strcasecmp($k['key'], $input_key) === 0) {
            $found = $k;
            break;
        }
    }
    if ($found) {
        $_SESSION['user_key_valid'] = true;
        $_SESSION['user_key'] = $found['key'];
        $_SESSION['user_label'] = $found['label'];
        header('Location: /user/dashboard.php');
        exit;
    } else {
        $error = 'Key akses tidak valid.';
    }
}

$page_title = 'Akses Pengguna';
include __DIR__ . '/../includes/header.php';
?>
<div class="auth-page">
  <div class="auth-box">
    <a href="/" class="back-link">&larr; Kembali</a>
    <h1>Akses Pengguna</h1>
    <p class="section-hint">Masukkan key akses yang diberikan oleh Admin TB.</p>
    <?php if ($error): ?>
      <div class="alert alert-error"><?= htmlspecialchars($error) ?></div>
    <?php endif; ?>
    <form method="post" action="/user/login.php">
      <label for="access_key">Key Akses</label>
      <input type="password" id="access_key" name="access_key" required autofocus placeholder="XXXX-XXXX-XXXX">

      <button type="submit" class="btn btn-primary">Masuk</button>
    </form>
  </div>
</div>
<?php include __DIR__ . '/../includes/footer.php'; ?>
