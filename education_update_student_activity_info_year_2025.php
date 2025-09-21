<?php
// Include database connection
include 'config.php'; // Adjust the path as necessary

// Check if form was submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve and sanitize form input
    $id = mysqli_real_escape_string($link, $_POST['id']);
    $fullname = mysqli_real_escape_string($link, $_POST['fullname']);
    $year_level = mysqli_real_escape_string($link, $_POST['year_level']);
    $major = mysqli_real_escape_string($link, $_POST['major']);

    // Update query
    $query = "UPDATE education_student_activity_attendance_school_year_2025 SET 
              fullname = '$fullname', 
              year_level = '$year_level',
              major = '$major'
              WHERE id = '$id'";

    // Execute the query
    if (mysqli_query($link, $query)) {
        // Redirect to the main page or display a success message
        header('Location: admin_education_student_activity_attendace_school_year_2025.php'); // Adjust as necessary
        exit;
    } else {
        // Display an error message
        echo "Error updating record: " . mysqli_error($link);
    }
}

// Close the database connection
mysqli_close($link);
?>
