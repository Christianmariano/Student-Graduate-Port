<?php
 // Include configuration file
include 'config.php'; // Ensure this path is correct

// Initialize the session
session_start();

// Check if the user is logged in; if not, redirect them to the login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
    header("location: adminlogin.php");
    exit;
}
// Include config file
require_once "config.php";
 
// Define variables and initialize with empty values
$new_password = $confirm_password = "";
$new_password_err = $confirm_password_err = "";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    // Validate new password
    if(empty(trim($_POST["new_password"]))){
        $new_password_err = "Please enter the new password.";     
    } elseif(strlen(trim($_POST["new_password"])) < 6){
        $new_password_err = "Password must have atleast 6 characters.";
    } else{
        $new_password = trim($_POST["new_password"]);
    }
    
    // Validate confirm password
    if(empty(trim($_POST["confirm_password"]))){
        $confirm_password_err = "Please confirm the password.";
    } else{
        $confirm_password = trim($_POST["confirm_password"]);
        if(empty($new_password_err) && ($new_password != $confirm_password)){
            $confirm_password_err = "Password did not match.";
        }
    }
        
    // Check input errors before updating the database
    if(empty($new_password_err) && empty($confirm_password_err)){
        // Prepare an update statement
        $sql = "UPDATE user SET password = ? WHERE id = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "si", $param_password, $param_id);
            
            // Set parameters
            $param_password = password_hash($new_password, PASSWORD_DEFAULT);
            $param_id = $_SESSION["id"];
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Password updated successfully. Destroy the session, and redirect to login page
                session_destroy();
                header("location: admin_user_profile_change_password.php.php");
                exit();
            } else{
                echo "Oops! Something went wrong. Please try again later.";
            }

            // Close statement
            mysqli_stmt_close($stmt);
        }
    }
    
    // Close connection
    mysqli_close($link);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shorcut icon" type="x-icon" href="assets/imgs/logo.jpg">
    <title>Graduate Portal</title>
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/profile.css">
    <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
    <style>
        .user {
            position: relative;
            width: 40px;
            height: 40px;
            margin-right: 5%;
        }
        .profile-container {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 20px;
        }
        .profile-image {
            flex: 1;
            display: flex;
            justify-content: center;
        }
        .profile-image img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
        }
        .profile-form {
            flex: 2;
            margin-left: 20px;
        }
        .profile-form form {
            display: flex;
            flex-direction: column;
        }
        .profile-form input, .profile-form button {
            margin-bottom: 10px;
            padding: 10px;
            font-size: 1rem;
        }
        .profile-form button {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .profile-form button:hover {
            background-color: #0056b3;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            min-width: 300px; /*change size dropdown menu*/
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            z-index: 1;
            border-radius: 8px;
            overflow: hidden;
        }
        .dropdown-content a {
            color: #333;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s, color 0.3s;
        }
        .dropdown-content a:hover {
            background-color: #007bff;
            color: #fff;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .dropdown-content::before {
            content: '';
            position: absolute;
            top: -10px;
            right: 20px;
            border-width: 10px;
            border-style: solid;
            border-color: transparent transparent #fff transparent;
        }

        .wrapper {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            border-radius: 8px;
            background-color: #f9f9f9;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-group input.is-invalid {
            border-color: #dc3545;
        }
        .invalid-feedback {
            color: #dc3545;
            font-size: 0.875em;
        }
        .btn-primary {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-link {
            color: #007bff;
            text-decoration: none;
        }
        .btn-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <!-- =============== Navigation ================ -->
    <div class="container">
        <div class="navigation">
        <ul>
                <div style="background-color: red; width: 100%; height: 80%; margin-top: 5%;">
                    <li>
                        <center>
                            <img src="https://apps.evsu.edu.ph/assets/img/icons/free-ed-is.png?v=3" style="width: 80%; height: 40%; margin-top: 5%;" alt="error">
                        </center>
                    </li>
                </div>
                    <li>
                        <a href="admin_dashboard.php">
                            <span class="icon">
                                <ion-icon name="home-outline"></ion-icon>
                            </span>
                            <span class="title">Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="admin_student_document.php">
                            <span class="icon">
                                <ion-icon name="document-outline"></ion-icon>
                            </span>
                            <span class="title">Document</span>
                        </a>
                    </li>
                    <li>
                        <a href="admin_student_schedule.php">
                            <span class="icon">
                                <ion-icon name="calendar-outline"></ion-icon>
                            </span>
                            <span class="title">Event Schedule</span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="#">
                            <span class="icon">
                                <ion-icon name="megaphone-outline"></ion-icon>
                            </span>
                            <span class="title">Announcement</span>
                        </a>
                        <div class="dropdown-content">
                        <a href="admin_student_document_upload.php">General Announcement</a>
                            <a href="admin_user_profile_general_info.php">On the Job Training(OJT)</a>
                        </div>
                    </li>
                    <li>
                        <a href="admin_student_studentuser.php">
                            <span class="icon">
                                <ion-icon name="person-outline"></ion-icon>
                            </span>
                            <span class="title">Student Info</span>
                        </a>
                    </li>
                    <li>
                        <a href="admin_document_record.php">
                            <span class="icon">
                                <ion-icon name="person-circle-outline"></ion-icon>
                            </span>
                            <span class="title">Student Record</span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="#">
                            <span class="icon">
                                <ion-icon name="person-circle-outline"></ion-icon>
                            </span>
                            <span class="title">Profile</span>
                        </a>
                        <div class="dropdown-content">
                            <a href="admin_user_profile_general_info.php">General Info</a>
                            <a href="admin_user_profile_change_password.php">Change Password</a>
                        </div>
                    </li>
                    <li>
                        <a href="admin_logout.php">
                            <span class="icon">
                                <ion-icon name="log-out-outline"></ion-icon>
                            </span>
                            <span class="title">Sign Out</span>
                        </a>
                    </li>
            </ul>
        </div>
        <!-- ========================= Main ==================== -->
        <div class="main">
            <div class="topbar">
                <div class="toggle">
                    <ion-icon name="menu-outline"></ion-icon>
                </div>
                

                <div class="user">
                    <h1><?php echo htmlspecialchars($_SESSION["username"]); ?><h1>
                </div>
            </div>

            <!-- ================ Profile Form ================= -->
            <div class="wrapper">
                <h2>Reset Password</h2>
                <p>Please fill out this form to reset your password.</p>
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post"> 
                    <div class="form-group">
                        <label>New Password</label>
                        <input type="password" name="new_password" class="form-control <?php echo (!empty($new_password_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $new_password; ?>">
                        <span class="invalid-feedback"><?php echo $new_password_err; ?></span>
                    </div>
                    <div class="form-group">
                        <label>Confirm Password</label>
                        <input type="password" name="confirm_password" class="form-control <?php echo (!empty($confirm_password_err)) ? 'is-invalid' : ''; ?>">
                        <span class="invalid-feedback"><?php echo $confirm_password_err; ?></span>
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Submit">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- =========== Scripts ========= -->
    <script src="assets/js/main.js"></script>
    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.js'></script>

    <!-- submenu -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const user = document.querySelector('.user');
            const dropdownMenu = document.querySelector('.dropdown-menu');

            user.addEventListener('click', function() {
                dropdownMenu.style.display = dropdownMenu.style.display === 'block' ? 'none' : 'block';
            });

            document.addEventListener('click', function(event) {
                if (!user.contains(event.target)) {
                    dropdownMenu.style.display = 'none';
                }
            });
        });
    </script>
</body>
</html>
