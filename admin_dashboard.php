<?php
session_start();
require 'includes/db.php';

if (!isset($_SESSION['user_id']) || $_SESSION['role'] !== 'admin') {
    header("Location: login.php");
    exit();
}

// Získání všech souborů
$stmt = $conn->prepare("SELECT files.id, files.filename, files.filepath, users.username 
                        FROM files 
                        JOIN users ON files.user_id = users.id");
$stmt->execute();
$files = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="cs">
<head>
    <title>Admin Panel</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h1>Admin Panel</h1>
        <a href="logout.php" class="top-right">Odhlásit se</a>
        
        <h2>Všechny nahrané soubory</h2>
        <ul>
        <?php foreach ($files as $file) : ?>
            <li class="file-container">
                <span><?= htmlspecialchars($file['filename']); ?> (uživatel: <?= htmlspecialchars($file['username']); ?>)</span>
                <div class="button-group">
                    <a href="<?= htmlspecialchars($file['filepath']); ?>" target="_blank" class="open-button">Otevřít</a>
                    <form action="delete_file.php" method="POST" style="display:inline;">
                        <input type="hidden" name="file_id" value="<?= $file['id']; ?>">
                        <button type="submit" class="delete-button">Smazat</button>
                    </form>
                </div>
            </li>
        <?php endforeach; ?>
    </ul>
    </div>
</body>
</html>