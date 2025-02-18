<?php
session_start();
require 'includes/db.php';
require 'includes/auth.php';

$user_id = $_SESSION['user_id'];

// Získání souborů uživatele
$stmt = $conn->prepare("SELECT * FROM files WHERE user_id = ?");
$stmt->execute([$user_id]);
$files = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="cs">
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="dashboard">
        <div class="navbar">
            <h1>Vítejte, <?= $_SESSION['username']; ?></h1>
            <a href="logout.php">Odhlásit se</a>
        </div>

        <div class="button-container">
            <a href="upload.php" class="button">📤 Nahrát soubor</a>
            <a href="share.php" class="button">📎 Sdílet soubor</a>
            <a href="shared_files.php" class="button">📂 Sdílené soubory</a>
        </div>

        <h2>Moje soubory</h2>
        <ul>
            <?php foreach ($files as $file) : ?>
                <li class="file-container">
                    <a href="<?= htmlspecialchars($file['filepath']); ?>" target="_blank">
                        <?= htmlspecialchars($file['filename']); ?>
                    </a>
                    <?php
                    // Náhled pro obrázky
                    $fileType = mime_content_type($file['filepath']);
                    if (strpos($fileType, 'image') !== false): ?>
                        <img src="<?= htmlspecialchars($file['filepath']); ?>" alt="Náhled" class="thumbnail">
                    <?php endif; ?>
                    <form action="delete.php" method="POST" style="display:inline;">
                        <input type="hidden" name="file_id" value="<?= $file['id']; ?>">
                        <button type="submit">🗑️ Smazat</button>
                    </form>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</body>
</html>