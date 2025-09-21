<?php
// Include database connection
include 'config.php'; // Adjust path as necessary

// Check if form was submitted via POST and if 'id' is set
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['first_year_student_id_second_sem'])) {
    // Retrieve and sanitize the id
    $first_year_student_id_second_sem = mysqli_real_escape_string($link, $_POST['first_year_student_id_second_sem']);

    // Prepare the DELETE query
    $query = "DELETE FROM first_year_entrep_second_sem_student_record_school_year_2027 WHERE first_year_student_id_second_sem = '$first_year_student_id_second_sem'";

    // Execute the query
    if (mysqli_query($link, $query)) {
        // Redirect to the main page or display a success message
        header('Location: admin_entrep_firt_year_student_second_sem_grade_record_school_year_2027.php'); // Adjust as necessary
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