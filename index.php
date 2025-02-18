<?php
session_start();
if (isset($_SESSION['user_id'])) {
    header("Location: dashboard.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cloudové Úložiště</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h1>Vítejte v Cloudovém Úložišti</h1>
        <a href="login.php" class="button">Přihlásit se</a>
        <a href="register.php" class="button">Registrovat</a>
    </div>
</body>
</html>