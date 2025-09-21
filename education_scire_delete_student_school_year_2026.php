<?php
// Include database connection
include 'config.php'; // Adjust path as necessary

// Check if form was submitted via POST and if 'id' is set
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['student_name'])) {
    // Retrieve and sanitize the id
    $student_name = mysqli_real_escape_string($link, $_POST['student_name']);

    // Prepare the DELETE query
    $query = "DELETE FROM scire_2026 WHERE student_name = '$student_name'";
    
    // Execute the query
    if (mysqli_query($link, $query)) {
        // Redirect to the main page or display a success message
        header('Location: admin_scire_year_2026.php'); // Adjust as necessary
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