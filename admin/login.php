<?php
require_once __DIR__ . '/../includes/auth.php';

$error = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = trim($_POST['username'] ?? '');
    $password = $_POST['password'] ?? '';
    $admin = get_admin();
    if ($username === $admin['username'] && password_verify($password, $admin['password_hash'])) {
        $_SESSION['admin_logged_in'] = true;
        $_SESSION['admin_username'] = $admin['username'];
        header('Location: /admin/dashboard.php');
        exit;
    } else {
        $error = 'Username atau password salah.';
    }
}

$page_title = 'Login Admin TB';
include __DIR__ . '/../includes/header.php';
?>
<div class="auth-page">
  <div class="auth-box">
    <a href="/" class="back-link">&larr; Kembali</a>
    <h1>Login Admin TB</h1>
    <?php if ($error): ?>
      <div class="alert alert-error"><?= htmlspecialchars($error) ?></div>
    <?php endif; ?>
    <form method="post" action="/admin/login.php">
      <label for="username">Username</label>
      <input type="text" id="username" name="username" required autofocus>

      <label for="password">Password</label>
      <input type="password" id="password" name="password" required>

      <button type="submit" class="btn btn-primary">Masuk</button>
    </form>
  </div>
</div>
<?php include __DIR__ . '/../includes/footer.php'; ?>
