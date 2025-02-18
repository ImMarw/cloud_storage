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

        <ul>
            <?php if (empty($shared_files)): ?>
                <li>Žádné sdílené soubory</li>
            <?php else: ?>
                <?php foreach ($shared_files as $file) : ?>
                    <li class="file-container">
                        <span><?= htmlspecialchars($file['filename']); ?> (sdíleno od: <?= htmlspecialchars($file['sender']); ?>)</span>
                        <a href="<?= htmlspecialchars($file['filepath']); ?>" target="_blank">Otevřít</a>
                        <?php
                        $fileType = mime_content_type($file['filepath']);
                        if (strpos($fileType, 'image') !== false): ?>
                            <img src="<?= htmlspecialchars($file['filepath']); ?>" alt="Náhled" class="thumbnail">
                        <?php endif; ?>
                    </li>
                <?php endforeach; ?>
            <?php endif; ?>
        </ul>
    </div>
</body>
</html>