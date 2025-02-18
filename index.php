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
    <title>Cloudové úložiště</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="centered-page"> <!-- Pouze index.php má tuto třídu -->
    <div class="container">
        <h1>Vítejte v Cloudovém Úložišti</h1>
        <div class="button-container">
            <a href="login.php" class="button">Přihlásit se</a>
            <a href="register.php" class="button">Registrovat</a>
        </div>
    </div>
</body>
</html>
