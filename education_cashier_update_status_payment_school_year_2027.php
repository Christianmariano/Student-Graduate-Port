<?php
// Database connection settings
$host = 'sql105.infinityfree.com';
$dbname = 'if0_37740098_graduate_portal';
$user = 'if0_37740098';
$pass = '5oAh2dTDTzZBcT';

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
    $payment_status = filter_input(INPUT_POST, 'payment_status', FILTER_SANITIZE_STRING);

    // Ensure the id and payment_status are not empty
    if ($id && $payment_status) {
        // Prepare an SQL statement for updating payment status
        $sql = 'UPDATE education_student_record_school_year_2027 SET payment_status = :payment_status WHERE id = :id';
        $stmt = $pdo->prepare($sql);

        // Bind parameters and execute the statement
        $stmt->bindParam(':payment_status', $payment_status, PDO::PARAM_STR);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);

        if ($stmt->execute()) {
            // Redirect or display a success message
            echo 'Payment status updated successfully.';
            header("Location: admin_cashier_education_department_record_borrow_toga_school_year_2027.php"); // Adjust to your main page
        } else {
            echo 'Failed to update payment status.';
        }
    } else {
        echo 'Invalid input data.';
    }
} else {
    echo 'Invalid request method.';
}
?>