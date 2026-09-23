<?php
session_start();

define('DATA_DIR', __DIR__ . '/../data');
define('ADMIN_FILE', DATA_DIR . '/admin.json');
define('KEYS_FILE', DATA_DIR . '/keys.json');

function ensure_data_files() {
    if (!is_dir(DATA_DIR)) {
        mkdir(DATA_DIR, 0755, true);
    }
    if (!file_exists(ADMIN_FILE)) {
        $default = array(
            'username' => 'adminTB',
            'password_hash' => password_hash('TBTBKATB', PASSWORD_DEFAULT),
        );
        file_put_contents(ADMIN_FILE, json_encode($default, JSON_PRETTY_PRINT));
    }
    if (!file_exists(KEYS_FILE)) {
        file_put_contents(KEYS_FILE, json_encode(array(), JSON_PRETTY_PRINT));
    }
}
ensure_data_files();

function get_admin() {
    return json_decode(file_get_contents(ADMIN_FILE), true);
}
function save_admin($admin) {
    file_put_contents(ADMIN_FILE, json_encode($admin, JSON_PRETTY_PRINT));
}
function get_keys() {
    $data = json_decode(file_get_contents(KEYS_FILE), true);
    return is_array($data) ? $data : array();
}
function save_keys($keys) {
    file_put_contents(KEYS_FILE, json_encode($keys, JSON_PRETTY_PRINT));
}
function generate_key_string() {
    $chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
    $segments = array();
    for ($s = 0; $s < 3; $s++) {
        $seg = '';
        for ($i = 0; $i < 4; $i++) {
            $seg .= $chars[random_int(0, strlen($chars) - 1)];
        }
        $segments[] = $seg;
    }
    return implode('-', $segments);
}
function require_admin_login() {
    if (empty($_SESSION['admin_logged_in'])) {
        header('Location: /admin/login.php');
        exit;
    }
}
function require_user_key() {
    if (empty($_SESSION['user_key_valid'])) {
        header('Location: /user/login.php');
        exit;
    }
}
