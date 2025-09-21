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
        $start_date = $_POST["start_date"];
        $end_date = isset($_POST["end_date"]) ? $_POST["end_date"] : $start_date;

        $stmt = $conn->prepare("INSERT INTO event (title, start_date, end_date) VALUES (:title, :start_date, :end_date)");
        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':start_date', $start_date);
        $stmt->bindParam(':end_date', $end_date);

        if ($stmt->execute()) {
            echo "<script>alert('New event added successfully');</script>";
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
