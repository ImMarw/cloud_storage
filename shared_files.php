<?php
session_start();
require 'includes/db.php';
require 'includes/auth.php';

$user_id = $_SESSION['user_id'];

// Načtení sdílených souborů
$stmt = $conn->prepare("
    SELECT f.filename, f.filepath, u.username AS sender 
    FROM shared_files sf
    JOIN files f ON sf.file_id = f.id
    JOIN users u ON sf.sender_id = u.id
    WHERE sf.receiver_id = ?
");
$stmt->execute([$user_id]);
$shared_files = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="cs">
<head>
    <title>Sdílené soubory</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <a href="dashboard.php" class="top-right">🔙 Zpět na Dashboard</a>
        <h1>Sdílené soubory</h1>
        <div class="file-grid">
        <?php foreach ($shared_files as $file) : ?>
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
    // Otevření/uzavření menu po kliknutí na tečky
    document.querySelectorAll(".menu-button").forEach(button => {
        button.addEventListener("click", function (e) {
            e.stopPropagation();

            // Skryjeme všechna otevřená menu
            document.querySelectorAll(".menu-dropdown").forEach(menu => menu.style.display = "none");

            // Zobrazíme menu vedle aktuálního souboru
            let menu = this.nextElementSibling;
            menu.style.display = "block";

            // Dynamické umístění menu vedle file-item
            let rect = this.getBoundingClientRect();
            menu.style.top = `${rect.top}px`;
            menu.style.left = `${rect.right + 5}px`;
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