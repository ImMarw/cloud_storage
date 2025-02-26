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
        <div class="file-grid">
        <?php foreach ($files as $file) : ?>
            <div class="file-item">
                <div class="menu-container">
                    <button class="menu-button">⋮</button>
                    <div class="menu-dropdown">
                        <a href="<?= htmlspecialchars($file['filepath']); ?>" target="_blank">Otevřít</a>
                        <a href="<?= htmlspecialchars($file['filepath']); ?>" download>Stáhnout</a>
                        <button class="rename-file" data-file="<?= $file['id']; ?>">Přejmenovat</button>
                        <form action="delete_file.php" method="POST">
                            <input type="hidden" name="file_id" value="<?= $file['id']; ?>">
                            <button type="submit" class="delete-button">Smazat</button>
                        </form>
                    </div>
                </div>

                <?php
                $fileExt = pathinfo($file['filename'], PATHINFO_EXTENSION);
                $imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'webp'];

                if (in_array(strtolower($fileExt), $imageExtensions)) {
                    echo '<img src="' . htmlspecialchars($file['filepath']) . '" class="file-preview">';
                } else {
                    echo '<div class="file-icon"><i class="fas fa-file-alt"></i></div>';
                }
                ?>
                <span class="file-name" title="<?= htmlspecialchars($file['filename']); ?>">
                    <?= htmlspecialchars(mb_strimwidth($file['filename'], 0, 20, "...")); ?>
                </span>
            </div>
        <?php endforeach; ?>
    </div>
    </div>
    <script>
    document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll(".menu-button").forEach(button => {
        button.addEventListener("click", function (e) {
            e.stopPropagation();

            // Skryjeme všechna otevřená menu
            document.querySelectorAll(".menu-dropdown").forEach(menu => menu.style.display = "none");

            // Zobrazíme menu vedle aktuálního souboru
            let menu = this.nextElementSibling;
            menu.style.display = "block";

            // Dynamické umístění menu vedle file-itemu
            let parentItem = this.closest(".file-item");
            let rect = parentItem.getBoundingClientRect();
        });
    });

    // Zavře menu po kliknutí kamkoliv jinam
    document.addEventListener("click", function () {
        document.querySelectorAll(".menu-dropdown").forEach(menu => {
            menu.style.display = "none";
            });
        });
    });
    </script>
</body>
</html>