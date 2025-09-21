<?php
// Database connection parameters
$servername = "localhost";
$username = "root";  // Change this to your DB username
$password = "";      // Change this to your DB password
$dbname = "graduate_portal";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['import'])) {
    // Get the form data
    $student_name = $_POST['student_name'];
    $graduation_fee = $_POST['graduation_fee'];
    $amount_paid = $_POST['amount_paid'];

    // Prepare the SQL statement
    $stmt = $conn->prepare("INSERT INTO education_student_record_school_year_2029 ( student_name,graduation_fee,amount_paid) VALUES (?, ?, ?)");
    $stmt->bind_param("sss",  $student_name, $graduation_fee, $amount_paid);

    // Execute the statement
    if ($stmt->execute()) {
        echo "Student record inserted successfully!";
        echo '<script>window.location.href = "admin_cashier_education_department_graduation_fee_school_year_2029.php";</script>';   
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close the statement and connection
    $stmt->close();
    $conn->close();
}
?>
