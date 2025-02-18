<?php
require 'includes/db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $stmt = $conn->prepare("INSERT INTO users (username, email, password_hash) VALUES (?, ?, ?)");
    if ($stmt->execute([$username, $email, $password])) {
        header("Location: login.php");
    } else {
        echo "Chyba registrace.";
    }
}
?>

<!DOCTYPE html>
<html lang="cs">
<head>
    <title>Registrace</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h2>Registrace</h2>
        <form method="POST">
            <input type="text" name="username" placeholder="Uživatelské jméno" required><br>
            <input type="email" name="email" placeholder="Email" required><br>
            <input type="password" name="password" placeholder="Heslo" required><br>
            <button type="submit">Registrovat</button>
        </form>
    </div>
</body>
</html>