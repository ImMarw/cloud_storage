<?php
require 'includes/db.php';

if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['file_id']) && isset($_POST['new_name'])) {
    $file_id = $_POST['file_id'];
    $new_name = $_POST['new_name'];

    // Aktualizace názvu souboru v databázi
    $stmt = $conn->prepare("UPDATE files SET filename = ? WHERE id = ?");
    if ($stmt->execute([$new_name, $file_id])) {
        echo "Soubor byl přejmenován.";
    } else {
        echo "Chyba při přejmenování.";
    }
}
?>