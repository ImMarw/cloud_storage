<?php
session_start();
require 'includes/db.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_FILES['file'])) {
    $user_id = $_SESSION['user_id'];
    $filename = $_FILES['file']['name'];
    $filepath = 'uploads/' . basename($filename);

    if (move_uploaded_file($_FILES['file']['tmp_name'], $filepath)) {
        $stmt = $conn->prepare("INSERT INTO files (user_id, filename, filepath) VALUES (?, ?, ?)");
        if ($stmt->execute([$user_id, $filename, $filepath])) {
            echo "Soubor nahrán úspěšně!";
        } else {
            echo "Chyba při ukládání do databáze.";
        }
    } else {
        echo "Chyba při nahrávání souboru!";
    }
}
?>

<!DOCTYPE html>
<html lang="cs">
<head>
    <title>Nahrání souboru</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h2>Nahrání souboru</h2>
        <form action="upload.php" method="post" enctype="multipart/form-data">
            <input type="file" name="file" required><br>
            <button type="submit">Nahrát</button>
        </form>
        <a href="dashboard.php" class="button">Zpět na Dashboard</a>
    </div>
</body>
</html>