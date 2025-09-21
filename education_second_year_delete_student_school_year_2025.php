<?php
// Include database connection
include 'config.php'; // Adjust path as necessary

// Check if form was submitted via POST and if 'id' is set
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['second_year_student_id'])) {
    // Retrieve and sanitize the id
    $second_year_student_id = mysqli_real_escape_string($link, $_POST['second_year_student_id']);

    // Prepare the DELETE query
    $query = "DELETE FROM second_year_education_first_sem_student_record_school_year_2025 WHERE second_year_student_id = '$second_year_student_id'";

    // Execute the query
    if (mysqli_query($link, $query)) {
        // Redirect to the main page or display a success message
        header('Location: admin_education_second_year_student_grade_record_school_year_2025.php'); // Adjust as necessary
        exit;
    } else {
        // Display an error message
        echo "Error deleting record: " . mysqli_error($link);
    }
} else {
    // Handle the case where id is not set or invalid request method
    echo "Invalid request.";
}

// Close the database connection
mysqli_close($link);
?>