<?php
$servername = "sql105.infinityfree.com";
$username = "if0_37740098";
$password = "5oAh2dTDTzZBcT";
$dbname = "if0_37740098_graduate_portal";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $title = $_POST["title"];

        $stmt = $conn->prepare("DELETE FROM event WHERE title = :title");
        $stmt->bindParam(':title', $title);

        if ($stmt->execute()) {
            echo "<script>alert('Event deleted successfully');</script>";
            echo "<script>window.location.href='Admin_Education_event_schedule_dashboard.php';</script>";
        } else {
            echo "<script>alert('Error: " . $stmt->errorInfo()[2] . "');</script>";
        }
    }
} catch(PDOException $e) {
    echo "<script>alert('Connection failed: " . $e->getMessage() . "');</script>";
}

$conn = null;
?>
