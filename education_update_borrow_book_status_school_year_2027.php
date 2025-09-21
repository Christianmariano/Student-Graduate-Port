<?php
// Database connection settings
$host = 'localhost';
$dbname = 'graduate_portal';
$user = 'root';
$pass = '';

// Create a new PDO instance
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die('Database connection failed: ' . $e->getMessage());
}

// Check if form data is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Sanitize and validate input data
    $id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
    $borrow_book_status = filter_input(INPUT_POST, 'borrow_book_status', FILTER_SANITIZE_STRING);

    // Ensure the id and ojt_status are not empty
    if ($id && $borrow_book_status) {
        // Prepare an SQL statement for updating ojt status
        $sql = 'UPDATE education_student_library_borrow_year_2027 SET borrow_book_status = :borrow_book_status WHERE id = :id';
        $stmt = $pdo->prepare($sql);

        // Bind parameters and execute the statement
        $stmt->bindParam(':borrow_book_status', $borrow_book_status, PDO::PARAM_STR);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);

        if ($stmt->execute()) {
            // Redirect or display a success message
            echo 'updated successfully.';
            header("Location: admin_education_student_library_borrow_year_2027.php"); // Adjust to your main page
        } else {
            echo 'Failed to update status.';
        }
    } else {
        echo 'Invalid input data.';
    }
} else {
    echo 'Invalid request method.';
}
?>
