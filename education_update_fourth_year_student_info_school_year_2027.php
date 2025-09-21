<?php
// Include database connection
include 'config.php'; // Adjust the path as necessary

// Check if form was submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve and sanitize form input
    $id = mysqli_real_escape_string($link, $_POST['id']);
    $fourth_year_id = mysqli_real_escape_string($link, $_POST['fourth_year_id']);
    $fourth_year_name = mysqli_real_escape_string($link, $_POST['fourth_year_name']);
    $fourth_major = mysqli_real_escape_string($link, $_POST['fourth_major']);

    // Update query
    $query = "UPDATE education_student_record_school_year_2027 SET 
              fourth_year_id = '$fourth_year_id', 
              fourth_year_name = '$fourth_year_name',
              fourth_major = '$fourth_major'
              WHERE id = '$id'";

    // Execute the query
    if (mysqli_query($link, $query)) {
        // Redirect to the main page or display a success message
        header('Location: admin_education_fourth_year_student_grade_year_2027.php'); // Adjust as necessary
        exit;
    } else {
        // Display an error message
        echo "Error updating record: " . mysqli_error($link);
    }
}

// Close the database connection
mysqli_close($link);
?>
