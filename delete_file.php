<?php
session_start();
require 'includes/db.php';

if (!isset($_SESSION['user_id']) || $_SESSION['role'] !== 'admin') {
    header("Location: login.php");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $file_id = $_POST['file_id'];

    // Získání cesty k souboru
    $stmt = $conn->prepare("SELECT filepath FROM files WHERE id = ?");
    $stmt->execute([$file_id]);
    $file = $stmt->fetch();

    if ($file) {
        // Smazání souboru z disku
        unlink($file['filepath']);

        // Smazání z databáze
        $stmt = $conn->prepare("DELETE FROM files WHERE id = ?");
        $stmt->execute([$file_id]);

        header("Location: admin_dashboard.php");
        exit();
    }
}