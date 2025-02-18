<?php
ob_start();
session_start();
require 'includes/db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $stmt = $conn->prepare("SELECT * FROM users WHERE email = ?");
    $stmt->execute([$email]);
    $user = $stmt->fetch();

    if ($user && password_verify($password, $user['password_hash'])) {
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['username'] = $user['username'];
        $_SESSION['role'] = $user['role'];

        if ($user['role'] === 'admin') {
            header("Location: admin_dashboard.php");
        } else {
            header("Location: dashboard.php");
        }
        exit();
    } else {
        echo "<p style='color:red;'>Neplatný email nebo heslo!</p>";
    }
}

ob_end_flush();
?>

<!DOCTYPE html>
<html lang="cs">
<head>
    <title>Přihlášení</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h2>Přihlášení</h2>
        <form method="POST">
            <input type="email" name="email" placeholder="Email" required class="full-width"><br>
            <input type="password" name="password" placeholder="Heslo" required class="full-width"><br>
            <button type="submit" class="full-width">Přihlásit</button>
        </form>
        <div class="center-button">
            <a href="register.php" class="button full-width">Nemáte účet? Registrace</a>
        </div>
    </div>
</body>
</html>