<?php
// Start the session if it's not already started
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Include your database connection file
include('config.php');

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the current and new event titles from the form
    $title = mysqli_real_escape_string($link, $_POST['title']);
    $new_title = mysqli_real_escape_string($link, $_POST['new_title']);

    // SQL query to update the event title
    $sql = "UPDATE event SET title = '$new_title' WHERE title = '$title'";

    // Execute the query and check if it was successful
    if (mysqli_query($link, $sql)) {
        // Success message
        echo "<script>alert('Event title updated successfully!');</script>";
        echo "<script>window.location.href='Admin_Education_event_schedule_dashboard.php';</script>";
    } else {
        // Error message
        echo "Error updating event: " . mysqli_error($link);
    }

    // Close the database connection
    mysqli_close($link);
}
?>
