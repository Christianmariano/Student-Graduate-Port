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
    $student_name = mysqli_real_escape_string($link, trim($_POST['student_name']));
    $ojt_fee = mysqli_real_escape_string($link, trim($_POST['ojt_fee']));
    $ojt_amount_paid = mysqli_real_escape_string($link, trim($_POST['ojt_amount_paid']));

        // Insert data into the database
        $sql = "INSERT INTO education_student_record_school_year_2030 (student_name, ojt_fee, ojt_amount_paid) 
                VALUES ('$student_name', '$ojt_fee', '$ojt_amount_paid')";

        if (mysqli_query($link, $sql)) {
            echo '<script>alert("Record added successfully.");</script>';
            echo '<script>window.location.href = "admin_cashier_education_department_ojt_fee_school_year_2024.php";</script>';
        } else {
            echo "Error: " . mysqli_error($link);
        }
    }

    // Close the database connection
    mysqli_close($link);

?>
