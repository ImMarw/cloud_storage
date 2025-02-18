<?php
session_start();
require 'includes/db.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $sender_id = $_SESSION['user_id'];
    $file_id = $_POST['file_id'];
    $receiver_email = $_POST['receiver_email'];

    $stmt = $conn->prepare("SELECT id FROM users WHERE email = ?");
    $stmt->execute([$receiver_email]);
    $receiver = $stmt->fetch();

    if ($receiver) {
        $stmt = $conn->prepare("INSERT INTO shared_files (file_id, sender_id, receiver_id) VALUES (?, ?, ?)");
        if ($stmt->execute([$file_id, $sender_id, $receiver['id']])) {
            echo "Soubor byl úspěšně sdílen!";
        } else {
            echo "Chyba při sdílení souboru.";
        }
    } else {
        echo "Uživatel s tímto emailem neexistuje.";
    }
}

$files_stmt = $conn->prepare("SELECT * FROM files WHERE user_id = ?");
$files_stmt->execute([$_SESSION['user_id']]);
$files = $files_stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="cs">
<head>
    <title>Sdílení souboru</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <a href="dashboard.php" class="top-right">🔙 Zpět na Dashboard</a>
        <h2>Sdílení souboru</h2>
        <form method="POST">
            <select name="file_id" required>
                <option value="">Vyberte soubor</option>
                <?php foreach ($files as $file) : ?>
                    <option value="<?= $file['id'] ?>"><?= htmlspecialchars($file['filename']) ?></option>
                <?php endforeach; ?>
            </select>
            <input type="email" name="receiver_email" placeholder="Email uživatele" required><br>
            <button type="submit">📎 Sdílet</button>
        </form>
    </div>
</body>
</html>