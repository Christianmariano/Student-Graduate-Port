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
   
    $fourth_year_name = mysqli_real_escape_string($link, trim($_POST['fourth_year_name']));
    $fourth_major = mysqli_real_escape_string($link, trim($_POST['fourth_major']));

    // Check if student_id already exists
    $check_sql = "SELECT fourth_year_id FROM education_student_record_school_year_2025 WHERE fourth_year_id = '$fourth_year_id'";
    $check_result = mysqli_query($link, $check_sql);

    if (mysqli_num_rows($check_result) > 0) {
        // If student_id exists, show alert and do not proceed with registration
        echo '<script>alert("Student ID already exists. Please use a different Student ID.");</script>';
        echo '<script>window.location.href = "admin_education_fourth_year_student_grade_year_2025.php";</script>';
    } else {
        // Insert data into the database
        $sql = "INSERT INTO education_student_record_school_year_2025 (fourth_year_name, fourth_major) 
                VALUES ('$fourth_year_name', '$fourth_major')";

        if (mysqli_query($link, $sql)) {
            echo '<script>alert("Record added successfully.");</script>';
            echo '<script>window.location.href = "admin_education_fourth_year_student_grade_year_2025.php";</script>';
        } else {
            echo "Error: " . mysqli_error($link);
        }
    }

    // Close the database connection
    mysqli_close($link);
?>
