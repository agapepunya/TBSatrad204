<?php
require_once __DIR__ . '/../includes/auth.php';
require_admin_login();

$message = '';
$error = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $action = $_POST['action'] ?? '';

    if ($action === 'change_password') {
        $current = $_POST['current_password'] ?? '';
        $new = $_POST['new_password'] ?? '';
        $confirm = $_POST['confirm_password'] ?? '';
        $admin = get_admin();

        if (!password_verify($current, $admin['password_hash'])) {
            $error = 'Password saat ini salah.';
        } elseif (strlen($new) < 6) {
            $error = 'Password baru minimal 6 karakter.';
        } elseif ($new !== $confirm) {
            $error = 'Konfirmasi password baru tidak cocok.';
        } else {
            $admin['password_hash'] = password_hash($new, PASSWORD_DEFAULT);
            save_admin($admin);
            $message = 'Password berhasil diganti.';
        }
    }

    if ($action === 'generate_key') {
        $label = trim($_POST['label'] ?? '');
        $keys = get_keys();
        $new_key = array(
            'key' => generate_key_string(),
            'label' => $label,
            'created_at' => date('Y-m-d H:i:s'),
        );
        $keys[] = $new_key;
        save_keys($keys);
        $message = 'Key baru berhasil dibuat: ' . $new_key['key'];
    }

    if ($action === 'delete_key') {
        $key_to_delete = $_POST['key'] ?? '';
        $keys = get_keys();
        $new_keys = array();
        foreach ($keys as $k) {
            if ($k['key'] !== $key_to_delete) {
                $new_keys[] = $k;
            }
        }
        save_keys($new_keys);
        $message = 'Key dihapus.';
    }
}

$keys = get_keys();
$page_title = 'Pengaturan Profil';
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
      <a href="/admin/dashboard.php">Dashboard</a>
      <a href="/admin/logout.php">Keluar</a>
    </nav>
  </header>
  <main class="app-main">
    <h1>Pengaturan Profil</h1>

    <?php if ($message): ?><div class="alert alert-success"><?= htmlspecialchars($message) ?></div><?php endif; ?>
    <?php if ($error): ?><div class="alert alert-error"><?= htmlspecialchars($error) ?></div><?php endif; ?>

    <section class="settings-section">
      <h2>Ganti Password</h2>
      <form method="post" action="/admin/settings.php" class="stacked-form">
        <input type="hidden" name="action" value="change_password">
        <label for="current_password">Password Saat Ini</label>
        <input type="password" id="current_password" name="current_password" required>

        <label for="new_password">Password Baru</label>
        <input type="password" id="new_password" name="new_password" required>

        <label for="confirm_password">Konfirmasi Password Baru</label>
        <input type="password" id="confirm_password" name="confirm_password" required>

        <button type="submit" class="btn btn-primary">Simpan Password</button>
      </form>
    </section>

    <section class="settings-section">
      <h2>Key Akses Pengguna</h2>
      <p class="section-hint">Buat kode akses untuk dibagikan ke Pengguna. Key bisa dihapus kapan saja.</p>

      <form method="post" action="/admin/settings.php" class="inline-form">
        <input type="hidden" name="action" value="generate_key">
        <input type="text" name="label" placeholder="Label (opsional, mis. Tim Lapangan)">
        <button type="submit" class="btn btn-primary">Generate Key Baru</button>
      </form>

      <table class="key-table">
        <thead>
          <tr>
            <th>Key</th>
            <th>Label</th>
            <th>Dibuat</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <?php if (empty($keys)): ?>
            <tr><td colspan="4" class="empty-row">Belum ada key.</td></tr>
          <?php else: ?>
            <?php foreach (array_reverse($keys) as $k): ?>
              <tr>
                <td class="key-code"><?= htmlspecialchars($k['key']) ?></td>
                <td><?= htmlspecialchars($k['label'] ?: '-') ?></td>
                <td><?= htmlspecialchars($k['created_at']) ?></td>
                <td>
                  <form method="post" action="/admin/settings.php" onsubmit="return confirm('Hapus key ini?');">
                    <input type="hidden" name="action" value="delete_key">
                    <input type="hidden" name="key" value="<?= htmlspecialchars($k['key']) ?>">
                    <button type="submit" class="btn btn-danger btn-small">Hapus</button>
                  </form>
                </td>
              </tr>
            <?php endforeach; ?>
          <?php endif; ?>
        </tbody>
      </table>
    </section>
  </main>
</div>
<?php include __DIR__ . '/../includes/footer.php'; ?>
