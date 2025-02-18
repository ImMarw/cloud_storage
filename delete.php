<?php
session_start();
require 'includes/db.php';
require 'includes/auth.php'; // Ověří, zda je uživatel přihlášen

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['file_id'])) {
    $file_id = $_POST['file_id'];
    $user_id = $_SESSION['user_id'];

    // Získání souboru z databáze
    $stmt = $conn->prepare("SELECT filepath FROM files WHERE id = ? AND user_id = ?");
    $stmt->execute([$file_id, $user_id]);
    $file = $stmt->fetch();

    if ($file) {
        // Odstranění souboru ze serveru
        if (file_exists($file['filepath'])) {
            unlink($file['filepath']);
        }

        // Odstranění souboru z databáze
        $stmt = $conn->prepare("DELETE FROM files WHERE id = ? AND user_id = ?");
        $stmt->execute([$file_id, $user_id]);

        echo "Soubor byl úspěšně smazán!";
    } else {
        echo "Soubor nebyl nalezen nebo nemáte oprávnění!";
    }
}
header("Location: dashboard.php");
exit();
?>