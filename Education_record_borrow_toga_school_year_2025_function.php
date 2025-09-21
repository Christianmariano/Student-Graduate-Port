<?php
// Initialize the session and include database configuration
require 'config.php';
session_start();

// Check if the user is logged in, if not then redirect them to login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
    header("location: index.php");
    exit;
}
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect and sanitize input data
    $student_id = mysqli_real_escape_string($link, trim($_POST['student_id']));
    $student_name = mysqli_real_escape_string($link, trim($_POST['student_name']));
    $toga_amount = mysqli_real_escape_string($link, trim($_POST['toga_amount']));
    $payment_status = mysqli_real_escape_string($link, trim($_POST['payment_status']));
    $rent_status = mysqli_real_escape_string($link, trim($_POST['rent_status']));
    $major = mysqli_real_escape_string($link, trim($_POST['major']));

        // Insert data into the database
        $sql = "INSERT INTO education_student_record_school_year_2025 (student_id, student_name, toga_amount, payment_status, rent_status, major) 
                VALUES ('$student_id', '$student_name', '$toga_amount', '$payment_status', '$rent_status', '$major')";

        if (mysqli_query($link, $sql)) {
            echo '<script>alert("Record added successfully.");</script>';
            echo '<script>window.location.href = "admin_cashier_education_department_record_borrow_toga_school_year_2025.php";</script>';
        } else {
            echo "Error: " . mysqli_error($link);
            echo '<script>window.location.href = "admin_cashier_education_department_record_borrow_toga_school_year_2025.php";</script>';
        }
    }

    // Close the database connection
    mysqli_close($link);

?>