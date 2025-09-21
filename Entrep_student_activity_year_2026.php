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
    $fullname = mysqli_real_escape_string($link, trim($_POST['fullname']));
    $year_level = mysqli_real_escape_string($link, trim($_POST['year_level']));

        // Insert data into the database
        $sql = "INSERT INTO entrep_student_activity_attendance_school_year_2026 (fullname, year_level) 
                VALUES ('$fullname', '$year_level')";

        if (mysqli_query($link, $sql)) {
            echo '<script>alert("Record added successfully.");</script>';
            echo '<script>window.location.href = "admin_entrepreneurship_student_activity_attendace_school_year_2026.php";</script>';
        } else {
            echo "Error: " . mysqli_error($link);
        }
    }

    // Close the database connection
    mysqli_close($link);

?>