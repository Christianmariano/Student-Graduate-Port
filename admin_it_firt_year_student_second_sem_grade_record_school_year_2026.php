<?php
// Initialize the session
require 'config.php';
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: index.php");
    exit;
}
// Get the logged-in username from the session
$username = $_SESSION["username"];

// Optional: Fetch additional details from the database (e.g., profile info)
$sql = "SELECT * FROM admin WHERE username = ?";
$stmt = $link->prepare($sql);
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();

// Get page number
if (isset($_GET['page_no']) && $_GET['page_no'] !== "") {
    $page_no = (int)$_GET['page_no'];
} else {
    $page_no = 1;
}

// Total rows or records to display
$total_record_per_page = 10;
// Get the page offset for the limit query
$offset = ($page_no - 1) * $total_record_per_page;
// Get previous page
$previous_page = $page_no - 1;
// Get next page
$next_page = $page_no + 1;

// Get the total count of records
$result_count = mysqli_query($link, "SELECT COUNT(*) as total_records FROM first_year_it_second_sem_student_record_school_year_2026") or die(mysqli_error($link));
// Total records
$records = mysqli_fetch_array($result_count);
// Store total_records to a variable 
$total_records = $records['total_records'];
// Get total pages
$total_no_of_pages = ceil($total_records / $total_record_per_page);

// Query string
$sql = "SELECT * FROM first_year_it_second_sem_student_record_school_year_2026 LIMIT $offset, $total_record_per_page";
// Result
$result = mysqli_query($link, $sql) or die(mysqli_error($link));
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
    <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
    <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.css' rel='stylesheet' /> 
    <link rel="stylesheet" 
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <style>
        
/* =========== Google Fonts ============ */
@import url("https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap");

/* =============== Globals ============== */
* {
  font-family: "Ubuntu", sans-serif;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

:root {
  --blue: #2a2185;
  --white: #fff;
  --gray: #f5f5f5;
  --black1: #222;
  --black2: #999;
}

body {
  min-height: 100vh;
  overflow-x: hidden;
}

.container {
  position: relative;
  width: 100%;
}

/* =============== Navigation ================ */
.navigation {
  position: fixed;
  width: 300px;
  height: 100%;
  background: var(--blue);
  transition: 0.5s;
  overflow: hidden;
}
.navigation.active {
  width: 80px;
}

.navigation ul {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
}

.navigation ul li {
  position: relative;
  width: 100%;
  list-style: none;
  border-top-left-radius: 30px;
  border-bottom-left-radius: 30px;
}

.navigation ul li a {
  position: relative;
  display: block;
  width: 100%;
  display: flex;
  text-decoration: none;
  color: var(--white);
}

.navigation ul li a .fas {
  position: relative;
  display: block;
  min-width: 60px;
  height: 60px;
  line-height: 75px;
  text-align: center;
}
.navigation ul li a .fas {
  font-size: 1.75rem;
}

.navigation ul li a .title {
  position: relative;
  display: block;
  padding: 0 10px;
  height: 60px;
  line-height: 60px;
  text-align: start;
  white-space: nowrap;
}


/* ===================== Main ===================== */
.main {
  position: absolute;
  width: calc(100% - 300px);
  left: 300px;
  min-height: 100vh;
  transition: 0.5s;
}
.main.active {
  width: calc(100% - 80px);
  left: 80px;
}

.topbar {
  width: 100%;
  height: 60px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0 10px;
}

.toggle {
  position: relative;
  width: 60px;
  height: 60px;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 2.5rem;
  cursor: pointer;
}

.user img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

/* ======================= Cards ====================== */
.cardBox {
  position: relative;
  width: 100%;
  padding: 20px;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-gap: 30px;
}

.cardBox .card {
  position: relative;
  padding: 30px;
  border-radius: 20px;
  display: flex;
  justify-content: space-between;
  cursor: pointer;
  box-shadow: 0 7px 25px rgba(0, 0, 0, 0.08);
}

.cardBox .card .numbers {
  position: relative;
  font-weight: 500;
  font-size: 2.5rem;
  color: var(--blue);
}

.cardBox .card .cardName {
  color: var(--black2);
  font-size: 1.1rem;
  margin-top: 5px;
}

.cardBox .card .iconBx {
  font-size: 3.5rem;
  color: var(--black2);
}

.cardBox .card:hover {
  background: var(--blue);
}

/* ================== Order Details List ============== */
.details {
  position: relative;
  width: 100%;
  padding: 20px;
  display: grid;
  grid-template-columns: 2fr 1fr;
  grid-gap: 30px;
  /* margin-top: 10px; */
}

.details .cardHeader {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
}
.cardHeader h2 {
  font-weight: 600;
  color: var(--blue);
}

.document {
  position: relative;
  display: grid;
  min-height: 500px;
  padding: 10px;
  box-shadow: 0 7px 25px rgba(0, 0, 0, 0.08);
  border-radius: 20px;
}

/* ====================== Responsive Design ========================== */
@media (max-width: 991px) {
  .navigation {
    left: -300px;
  }
  .navigation.active {
    width: 300px;
    left: 0;
  }
  .main {
    width: 100%;
    left: 0;
  }
  .main.active {
    left: 300px;
  }
  .cardBox {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 768px) {
  .details {
    grid-template-columns: 1fr;
  }
  .status.inProgress {
    white-space: nowrap;
  }
}

@media (max-width: 480px) {
  .cardBox {
    grid-template-columns: repeat(1, 1fr);
  }
  .cardHeader h2 {
    font-size: 20px;
  }
  .user {
    min-width: 40px;
  }
  .navigation {
    width: 100%;
    left: -100%;
    z-index: 1000;
  }
  .navigation.active {
    width: 100%;
    left: 0;
  }
  .toggle {
    z-index: 10001;
  }
  .main.active .toggle {
    color: #fff;
    position: fixed;
    right: 0;
    left: initial;
  }
}

        
        .user {
            position: relative;
            width: 40px;
            height: 40px;
            margin-right: 25%;
        }
        .user .img {
            border-radius: 50%;
            width: 40px; /* Adjust as needed */
            height: 40px; /* Adjust as needed */
            margin-left: 60px; /* Space between text and image */
        }

        .user .icon-down {
            position: absolute;
            top: 55%;
            right: -80px; /* Adjust positioning as needed */
            transform: translateY(-50%);
            font-size: 16px;
            color: #333; /* Adjust color as needed */
        }
        .user h1 {
            margin: 0;
        }

        /* General styles for form-container */
        .form-container {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: flex-start; /* Align content to the left */
            width: 100%; /* Ensure the container takes full width */
        }
        .form-container .student_status {
            background-color: whitesmoke;
            color: black;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 10px;
            width: 100%; /* Full width of the parent container */
        }
        
        .form-container div {
            background-color: whitesmoke;
            color: black;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 10px;
            width: 100%; /* Full width of the parent container */
        }

        .form-container form {
            display: flex;
            flex-direction: column;
            align-items: flex-start; /* Align form elements to the left */
            width: 100%;
        }

        .form-container p {
            margin: 0;
            padding-bottom: 10px;
            text-align: left; /* Align text to the left */
        }

        .form-container input[type="file"],
        .form-container button {
            margin-top: 10px;
            width: 100%; /* Full width for better alignment */
            box-sizing: border-box; /* Include padding in width calculation */
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .form-container div {
                padding: 10px;
            }

            .form-container input[type="file"],
            .form-container button {
                width: 100%;
            }

            .form-container p {
                font-size: 1rem;
            }
        }

        @media (max-width: 480px) {
            .form-container div {
                padding: 5px;
            }

            .form-container p {
                font-size: 0.9rem;
            }
        }

        .file-list {
            margin-top: 20px;
        }
        .file-item {
            margin-bottom: 10px;
            padding: 10px;
            background-color: whitesmoke;
            color: black;
            border: 1px solid #ddd;
        }
        .file-item a {
            text-decoration: none;
            color: #333;
        }
        .file-buttons {
            display: flex;
            gap: 10px;
        }

        .btn-view, .btn-download {
            padding: 5px 10px;
            text-decoration: none;
            color: white;
            border-radius: 3px;
            font-size: 0.9rem;
        }

        .btn-view {
            background-color: #007bff;
        }

        .btn-download {
            background-color: #28a745;
        }

        
        table {
            width: 95%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr{

        }
        .pagination {
            display: flex;
            justify-content: flex-start; /* Align to the left */
            padding: 10px 0;
            list-style: none;
        }

        .page-item {
            margin: 0 5px;
        }

        .page-link {
            display: block;
            padding: 10px 15px;
            color: #007bff;
            text-decoration: none;
            border: 1px solid #dee2e6;
            border-radius: 4px;
        }

        .page-link:hover {
            background-color: #e9ecef;
            border-color: #dee2e6;
        }

        .page-item.active .page-link {
            background-color: #007bff;
            border-color: #007bff;
            color: #fff;
        }

        .page-item.disabled .page-link {
            color: #6c757d;
            pointer-events: none;
            background-color: #fff;
            border-color: #dee2e6;
        }

        .p-10 {
            text-align: left; /* Align text to the left */
            padding: 10px;
            font-weight: bold;
        }

        .p-10 strong {
            font-size: 16px;
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
            color:black;
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


        /* Basic reset for form elements */

        input, select, button {
            font-family: Arial, sans-serif;
            font-size: 16px;
        }

        /* Style for student status section */

        /* Center the title */
        .form-container center p {
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }

        /* Style for form elements */
        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"],
        input[type="datetime-local"],
        select,
        input[type="file"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="file"] {
            border: none;
            padding: 0;
            margin: 0;
        }

        /* Style for submit button */
        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }


        /* Image Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.9);
        }
        .modal-content {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            margin: auto;
            padding: 0;
            width: 80%;
            max-width: 700px;
        }
        .modal-content img {
            margin: auto;
            display: block;
            width: 100%;
            max-width: 700px;
        }
        .close {
            position: absolute;
            top: 10px;
            right: 25px;
            color: black;
            font-size: 35px;
            font-weight: bold;
            cursor: pointer;
        }
        .close:hover,
        .close:focus {
            color: red;
            text-decoration: none;
            cursor: pointer;
        }

        .action-links {
            display: flex;
            justify-content: space-between;
            
        }
        .action-links .separator {
            margin: 0 10px; /* Adjust the spacing as needed */
        }

        .action-links .separator {
            margin: 0 10px; /* Adjust the spacing as needed */
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
        
.search-container {
            display: flex;
            justify-content: center; /* Center align the form within its container */
            margin: 20px 0 3%; /* Add some vertical spacing around the form */ /* margin format: top righ bottom left */
        }

        .search-container form {
            display: flex;
            align-items: center; /* Center align input and button vertically */
            width: 100%; /* Adjust the form width as needed */
            max-width: 600px; /* Set a max-width to limit the form width */
        }

        .search-container span {
            display: flex; /* Ensure that the input and button are aligned horizontally */
            width: 100%; /* Ensure the span takes full width */
        }

        .search-container input[type="text"] {
            flex: 1; /* Make the input field take up available space */
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px 0 0 5px; /* Rounded corners for the left side */
            box-sizing: border-box; /* Ensure padding and border are included in the element's total width and height */
        }

        .search-container button {
            padding: 10px 20px;
            font-size: 1rem;
            color: #fff;
            background-color: #007bff;
            border: 1px solid #007bff;
            border-radius: 0 5px 5px 0; /* Rounded corners for the right side */
            cursor: pointer;
            box-sizing: border-box; /* Ensure padding and border are included in the element's total width and height */
        }

        .search-container input[type="text"], .search-container button {
            height: 100%; /* Make sure both elements fill the height of the container */
        }

        .search-container form {
            height: 40px; /* Adjust the height to make both input and button the same height */
        }

        .search-container form {
            display: flex;
            align-items: center; /* Center align input and button vertically */
            max-width: 600px; /* Set a max-width to limit the form width */
        }
        .form-container_export {
            margin: 0 10px; /* Adjust the spacing between forms as needed */
        }

        .search-container form {
            display: flex;
            align-items: center; /* Center align input and button vertically */
            max-width: 600px; /* Set a max-width to limit the form width */
        }

        .dropdown-content_a {
            display: none; /* Initially hidden */
            position: absolute;
            background-color: #fff;
            min-width: 200px; /* Adjust as needed */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            overflow: hidden;
            z-index: 1;
            top: 100%; /* Position below the icon */
            right: -80; /* Align to the right of the icon */

        }

        .dropdown-content_a a {
            color: #333;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s, color 0.3s;
        }

        .dropdown-content_a a:hover {
            background-color: #007bff;
            color: #fff;
        }

        .icon-down, .icon-up {
            position: absolute;
            top: 50%;
            right: -80px; /* Adjust position as needed */
            transform: translateY(-50%);
            font-size: 16px;
            color: #333;
            cursor: pointer;
            display: none; /* Initially hide the up icon */
        }

        .icon-down {
            display: block; /* Initially show the down icon */
        }

        /* update student info container */
        .modal-update-first_year_student_grade_status{
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgba(0,0,0,0.9);
        }

        /* Close button */
        .close-first_year_student_grade_status {
            position: absolute;
            top: 10px;
            right: 25px;
            color: black;
            font-size: 35px;
            font-weight: bold;
            cursor: pointer;
        }

        .close-first_year_student_grade_status:hover,
        .close-first_year_student_grade_status:focus {
            color: red;
            text-decoration: none;
            cursor: pointer;
        }

        /* update student info container */
        .modal-delete{
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgba(0,0,0,0.9);
        }

        /* Close button */
        .close-delete {
            position: absolute;
            top: 10px;
            right: 25px;
            color: black;
            font-size: 35px;
            font-weight: bold;
            cursor: pointer;
        }

        .close-delete:hover,
        .close-delete:focus {
            color: red;
            text-decoration: none;
            cursor: pointer;
        }
        /*css prin*/
        /* Invoice Container */
        .invoice-container {
            padding: 20px;
        }

        .invoice-header {
            text-align: center;
        }
        @media print {
        body * {
            visibility: hidden; /* Hide everything */
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .invoice-container {
            display: block;
            width: 100%;
            height: 100%;
            max-height: 100vh; /* Ensure it fits within the viewport */
            margin: 0 auto;
            page-break-inside: avoid; /* Prevent page breaks within the div */
            font-size: 12px; /* Adjust font size to fit content */
        }

        .invoice-header img {
            max-width: 10%; /* Scale down the image */
        }
        p {
        font-size: 24px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 20px; /* Reduce font size for table */
        }

        th, td {
            padding: 5px;
            border: 1px solid black;
            text-align: left;
        }

        @page {
            size: A4; /* Set the page size */
            margin: 10mm; /* Add margin for better layout */
        }
    
        .invoice-container {
            display: block;
        }
        .invoice-container, .invoice-container * {
            visibility: visible; /* Show the invoice container and its content */
        }
        .invoice-container {
            position: absolute;
            left: 0;
            top: 0;
        }
    }
        /*nav scrool bar*/
        .nav_sidebar {
            max-height: 90vh; /* Set the maximum height */
            overflow-y: auto; /* Enable vertical scrolling if content overflows */
        }

        /* Optional - Styling for the scrollbar (WebKit browsers) */
        .nav_sidebar::-webkit-scrollbar {
            width: 8px;
        }

        .nav_sidebar::-webkit-scrollbar-track {
            background: #f1f1f1;
        }

        .nav_sidebar::-webkit-scrollbar-thumb {
            background: #888;
        }

        .nav_sidebar::-webkit-scrollbar-thumb:hover {
            background: #555;
        }
    </style>
</head>
<body>
    <!-- =============== Navigation ================ -->
    <div class="container">
    <div class="navigation">
    <ul>
            <div class="nav_sidebar">
                <div style="background-color: red; width: 100%; height: 80%; margin-top: 5%;">
                <li>
                        <center>
                            <img src="https://apps.evsu.edu.ph/assets/img/icons/free-ed-is.png?v=3" style="width: 80%; height: 40%; margin-top: 5%;" alt="error">
                        </center>
                    </li>
                </div>
                    <li>
                        <a href="Admin_Information_Technology_dashboard.php">
                            <span class="icon">
                                <i class="fas fa-home"></i>
                            </span>
                            <span class="title">Dashboard</span>
                        </a>
                    </li>

                    <li>
                        <a href="admin_it_monitoring_library_borrow_year_2025.php">
                            <span class="icon">
                            <i class="fa-solid fas fa-book"></i>
                            </span>
                            <span class="title">Student Borrrow Book List</span>
                        </a>
                    </li>

                    <li>
                        <a href="Admin_IT_event_schedule_dashboard.php">
                            <span class="icon">
                            <i class="fa-regular fas fa-calendar"></i>
                            </span>
                            <span class="title">Event Schedule</span>
                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="admin_it_student_activity_school_year_2025.php">
                            <span class="icon">
                            <i class="fa-solid fas fa-file-pen"></i>
                            </span>
                            <span class="title">Student Activity Attendace</span>
                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="#">
                            <span class="icon">
                            <i class="fa-solid fas fa-file-pen"></i>
                            </span>
                            <span class="title">Caption Project</span>
                        </a>
                        <div class="dropdown-content">
                            <a style="color: black" href="admin_information_technology_caption_project_school_year_2025.php">School Year 2025</a>
                            <a style="color: black" href="admin_information_technology_caption_project_school_year_2026.php">School Year 2026</a>
                            <a style="color: black" href="admin_information_technology_caption_project_school_year_2027.php">School Year 2027</a>
                            <a style="color: black" href="admin_information_technology_caption_project_school_year_2028.php">School Year 2028</a>
                            <a style="color: black" href="admin_information_technology_caption_project_school_year_2029.php">School Year 2029</a>
                            <a style="color: black" href="admin_information_technology_caption_project_school_year_2030.php">School Year 2030</a>
                        </div>
                    </li>

                    <li class="dropdown">
                        <a href="#">
                            <span class="icon">
                            <i class="fa-solid fas fa-user"></i>
                            </span>
                            <span class="title">Student Grade Record</span>
                        </a>
                        <div class="dropdown-content">
                            <a style="color: black" href="admin_it_first_year_student_grade_record_school_year_2025.php">First Year</a>
                            <a style="color: black" href="admin_it_second_year_student_grade_school_year_2025.php">Second Year</a>
                            <a style="color: black" href="admin_it_third_year_student_grade_year_2025.php">Third Year</a>
                            <a style="color: black" href="admin_it_fourth_year_student_grade_year_2025.php">Fourth Year</a>
                        </div>
                    </li>

                    <li class="dropdown">
                        <a href="#">
                            <span class="icon">
                            <i class="fa-solid fas fa-user"></i>
                            </span>
                            <span class="title">Student Record</span>
                        </a>
                        <div class="dropdown-content">
                            <a style="color: black" href="admin_information_technology_student_record_school_year_2025.php">School Year 2025</a>
                            <a style="color: black" href="admin_information_technology_student_record_school_year_2026.php">School Year 2026</a>
                            <a style="color: black" href="admin_information_technology_student_record_school_year_2027.php">School Year 2027</a>
                            <a style="color: black" href="admin_information_technology_student_record_school_year_2028.php">School Year 2028</a>
                            <a style="color: black" href="admin_information_technology_student_record_school_year_2029.php">School Year 2029</a>
                            <a style="color: black" href="admin_information_technology_student_record_school_year_2030.php">School Year 2030</a>
                        </div>
                    </li>

                    <li class="dropdown">
                        <a href="admin_it_department_record_borrow_toga_school_year_2025.php">
                            <span class="icon">
                            <i class="fa-solid fas fa-user-graduate"></i>
                            </span>
                            <span class="title">Student Rent Toga</span>
                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="admin_it_department_graduation_fee_school_year_2025.php">
                            <span class="icon">
                            <i class="fa-solid fas fa-money-bill"></i>
                            </span>
                            <span class="title">Student Graduation Fee</span>
                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="#">
                            <span class="icon">
                            <i class="fa-solid fas fa-people-group"></i>
                            </span>
                            <span class="title">Organization / Guild</span>
                        </a>
                        <div class="dropdown-content">
                            <a style="color: black" href="admin_jpg_year_2025.php">JPG</a>
                        </div>
                    </li>

                    <li class="dropdown">
                        <a href="#">
                            <span class="icon">
                            <i class="fas fa-briefcase"></i>
                            </span>
                            <span class="title">OJT Record</span>
                        </a>
                        <div class="dropdown-content">
                            <a style="color: black" href="admin_information_technology_record_ojt_school_year_2025.php">School Year 2025</a>
                            <a style="color: black" href="admin_information_technology_record_ojt_school_year_2026.php">School Year 2026</a>
                            <a style="color: black" href="admin_information_technology_record_ojt_school_year_2027.php">School Year 2027</a>
                            <a style="color: black" href="admin_information_technology_record_ojt_school_year_2028.php">School Year 2028</a>
                            <a style="color: black" href="admin_information_technology_record_ojt_school_year_2029.php">School Year 2029</a>
                            <a style="color: black" href="admin_information_technology_record_ojt_school_year_2030.php">School Year 2030</a>
                        </div>
                    </li>

                    <li class="dropdown">
                        <a href="#">
                            <span class="icon">
                            <i class="fa-solid fas fa-tree"></i>
                            </span>
                            <span class="title">Tree Planting Record</span>
                        </a>
                        <div class="dropdown-content">
                            <a style="color: black" href="admin_information_technology_record_tree_planting_school_year_2025.php">School Year 2025</a>
                            <a style="color: black" href="admin_information_technology_record_tree_planting_school_year_2026.php">School Year 2026</a>
                            <a style="color: black" href="admin_information_technology_record_tree_planting_school_year_2027.php">School Year 2027</a>
                            <a style="color: black" href="admin_information_technology_record_tree_planting_school_year_2028.php">School Year 2028</a>
                            <a style="color: black" href="admin_information_technology_record_tree_planting_school_year_2029.php">School Year 2029</a>
                            <a style="color: black" href="admin_information_technology_record_tree_planting_school_year_2030.php">School Year 2030</a>
                        </div>
                    </li>

                    <li>
                        <a href="admin_logout.php">
                            <span class="icon">
                            <i class="fas fa-sign-out-alt"></i>
                            </span>
                            <span class="title">Sign Out</span>
                        </a>
                    </li>
                    
                    <!--
                    <li>
                        <a href="admin_information_tree_planting.php">
                            <span class="icon">
                                <i class="fas fa-tree"></i>
                                </span>
                            <span class="title">Tree Planting</span>
                        </a>
                    </li>-->
            </div>
            </ul>
        </div>
        <!-- ========================= Main ==================== -->
        <div class="main">
            <div class="topbar">
                <div class="toggle">
                    <ion-icon name="menu-outline"></ion-icon>
                </div>
                <div class="user">
                    <div class="user_image" >
                        <img class="img" src="<?php echo htmlspecialchars($user['photo']); ?>" alt="Profile Picture">
                    </div>
                    <i class="fas fa-chevron-up icon-up"></i>
                    <i class="fas fa-chevron-down icon-down"></i> <!-- Add this line for the down arrow icon -->
                    <!--<h1><?php echo htmlspecialchars($_SESSION["username"]); ?><h1>-->
                    <div class="dropdown-content_a">
                        <a href="admin_information_technology_user_profile_general_info.php">General Info</a>
                        <a href="admin_information_technology_change_password.php">Change Password</a>
                    </div>
                </div>
            </div>
            <p style="margin-left:3%; font-size:40px">Department of Information Technology</p>
            <div class="details">
                <div class="document" style="width:150%">
                    <div class="cardHeader">
                        <h2>First Year Grade Record School Year 2026-2027</h2>
                            <!-- Search Form -->
                        <div class="search-container">
                            <form method="GET" action="">
                                <form method="GET" action="">
                                    <span>
                                        <input type="text" name="search" placeholder="Search..." value="<?php echo isset($_GET['search']) ? htmlspecialchars($_GET['search']) : ''; ?>">
                                        <button type="submit">Search</button>
                                    </span>
                                </form>
                            </form>
                        </div>
                    </div><br><br>

                    <div style="height: 600px; overflow-y: auto;">
                    <div style="width: 100%; overflow: hidden;">
                        <div style="float: left; width: 160px">
                            <select name="" id="" onchange="window.location.href=this.value;">
                                <option value="" hidden disable>School Year</option>
                                <option value="admin_it_firt_year_student_second_sem_grade_record_school_year_2025.php">2025-2026</option>
                                <option value="admin_it_firt_year_student_second_sem_grade_record_school_year_2026.php">2026-2027</option>
                                <option value="admin_it_firt_year_student_second_sem_grade_record_school_year_2027.php">2027-2028</option>
                                <option value="admin_it_firt_year_student_second_sem_grade_record_school_year_2028.php">2028-2029</option>
                                <option value="admin_it_firt_year_student_second_sem_grade_record_school_year_2029.php">2029-2030</option>
                                <option value="admin_it_firt_year_student_second_sem_grade_record_school_year_2030.php">2030-2031</option>
                            </select>
                        </div>
                        
                        <div style="float: right; margin-right: 68%; width: 150px">
                            <select name="" id="" onchange="window.location.href=this.value;">
                                <option value="" hidden disable>Semester</option>
                                <option value="admin_it_first_year_student_grade_record_school_year_2025.php">1 Semester</option>
                                <option value="admin_it_firt_year_student_second_sem_grade_record_school_year_2025.php">2 Semester</option>
                            </select>
                        </div>
                    </div>

                    <div style="margin-bottom:3%">
                        <button id="openModalBtn">Add Student</button>
                        <button id="printButton" style="float:right; margin-right:5%" onclick="window.print()">Print</button>
                    </div>
                    
                        <table>
                            <thead>
                            <tr >
                                    <th colspan="5"><center>Second Semester</center></th>
                                </tr>

                                <tr>
                                    <th>Student ID</th>
                                    <th>Student Name</th>
                                    <th>Grade Status</th>
                                    <th>Action Grade Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                // Retrieve the search query
                                $search = isset($_GET['search']) ? mysqli_real_escape_string($link, $_GET['search']) : '';

                                // Update query to include search functionality for multiple fields
                                $query = "SELECT * FROM first_year_it_second_sem_student_record_school_year_2026 WHERE 
                                    first_year_student_name_second_sem LIKE '%$search%' OR
                                    first_year_student_grade_second_sem_status LIKE '%$search%' OR 
                                    first_year_student_id_second_sem LIKE '%$search%'";

                                $result = mysqli_query($link, $query);

                                while ($row = mysqli_fetch_array($result)) { ?>
                                    <tr>
                                        <td><?php echo htmlspecialchars($row['first_year_student_id_second_sem']); ?></td>
                                        <td><?php echo htmlspecialchars($row['first_year_student_name_second_sem']); ?></td>
                                        <td><?php echo htmlspecialchars($row['first_year_student_grade_second_sem_status']); ?></td>
                                        <td>
                                            <form action="it_update_first_year_student__second_sem_grade_status_school_year_2026.php" method="POST" style="display: inline;">
                                                <input type="hidden" name="id" value="<?php echo htmlspecialchars($row['id']); ?>">
                                                <select name="first_year_student_grade_second_sem_status" class="status-select" onchange="this.form.submit()">
                                                    <option value="Not Completed" <?php echo ($row['first_year_student_grade_second_sem_status'] === 'Not Completed') ? 'selected' : ''; ?>>Not Completed</option>
                                                    <option value="Completed" <?php echo ($row['first_year_student_grade_second_sem_status'] === 'Completed') ? 'selected' : ''; ?>>Completed</option>
                                                </select>
                                            </form>
                                        </td>
                                        <td>
                                            <a href="javascript:void(0)" onclick="openModal('<?php echo htmlspecialchars($row['id']); ?>', '<?php echo htmlspecialchars($row['first_year_student_id_second_sem']); ?>', '<?php echo htmlspecialchars($row['first_year_student_name_second_sem']); ?>')">Edit</a>
                                            <a href="javascript:void(0)" onclick="openDeleteModal('<?php echo htmlspecialchars($row['first_year_student_id_second_sem']); ?>')">Delete</a>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                        
                        <br><br>
                        <!-- Pagination -->
                        <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item <?= ($page_no <= 1) ? 'disabled' : '' ?>">
                                <a class="page-link" <?= ($page_no > 1) ? 'href="?page_no=' . $previous_page . '"' : ''; ?>>Previous</a>
                            </li>
                            <?php for($counter = 1; $counter <= $total_no_of_pages; $counter++) { ?>
                                <?php if($page_no !== $counter) { ?>
                                    <li class="page-item"><a class="page-link" href="?page_no=<?= $counter; ?>"><?= $counter; ?></a></li>
                                <?php } else { ?>
                                    <li class="page-item active"><a class="page-link"><?= $counter; ?></a></li>
                                <?php } ?>
                            <?php } ?>

                            <li class="page-item <?= ($page_no >= $total_no_of_pages) ? 'disabled' : '' ?>">
                                <a class="page-link" <?= ($page_no < $total_no_of_pages) ? 'href="?page_no=' . $next_page . '"' : ''; ?>>Next</a>
                            </li>
                        </ul>
                        </nav>
                        <div class="p-10">
                            <strong>Page <?= $page_no; ?> of <?= $total_no_of_pages; ?></strong>
                        </div>
                    </div>          
                </div>
                

                    <!-- edit student info Structure -->
                    <?php
                if (isset($_GET['edit_id'])) {
                    $id = mysqli_real_escape_string($link, $_GET['edit_id']);
                    $query = "SELECT * FROM first_year_it_second_sem_student_record_school_year_2026 WHERE id = '$id'";
                    $result = mysqli_query($link, $query);
                    $row = mysqli_fetch_array($result);
                }
                ?>

            <div id="first_year_student_grade_status_TogaModal" class="modal-update-first_year_student_grade_status" style="display: none;">
                <div class="modal-content">
                    <span class="close-first_year_student_grade_status">&times;</span>
                    <div class="form-container">
                        <div class="student_status">
                            <h2>Edit First Year Student Information First Sem</h2>
                            <form id="editRentTogaForm" method="POST" action="it_update_first_year_student_info_second_sem_school_year_2026.php">
                                <input type="hidden" id="modal_id" name="id">
                                <label for="first_year_student_id_second_sem">Student ID</label>
                                <input type="text" id="modal_first_year_student_id_second_sem" name="first_year_student_id_second_sem" required><br>
                                <label for="student_name">Student Name</label>
                                <input type="text" id="modal_first_year_student_name_second_sem" name="first_year_student_name_second_sem" required><br>
                                <input type="submit" value="Update">
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- delete student record Structure -->
            <div id="deleteModal" class="modal-delete" style="display: none;">
                <div class="modal-content">
                    <span class="close-delete">&times;</span>
                    <div class="form-container">
                        <div class="student_status">
                            <h2>Confirm Deletion</h2>
                            <p>Are you sure you want to delete this record?</p>
                            <form id="deleteForm" action="it_first_year_second_sem_delete_student_school_year_2026.php" method="POST">
                                <input type="hidden" id="first_year_student_id_second_sem" name="first_year_student_id_second_sem">
                                <button type="submit">Yes, Delete</button>
                                <button type="button" onclick="closeDeleteModal()">Cancel</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- The Modal -->
                <div id="myModal" class="modal">
                    <!-- Modal Content -->
                    <div class="modal-content">
                        <span class="close">&times;</span>
                        <div class="form-container">
                            <div class="student_status">
                                <form method="POST" action="IT_record_frist_year_second_sem_function_school_year_2026.php" enctype="multipart/form-data">
                                    <center>
                                        <p>Add Student</p>
                                    </center>
                                    <hr>
                                    <label for="student_name">Student ID</label>
                                    <input type="text" name="first_year_student_id_second_sem" id="first_year_student_id_second_sem" required>

                                    <label for="student_name">Student Name</label>
                                    <input type="text" name="first_year_student_name_second_sem" id="first_year_student_name_second_sem" required>

                                    <button type="submit" name="import">Submit</button>
                                </form>
                            <br><br>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="file-list">
                </div>

                <!-- print Form-->
                <div class="invoice-container">
                    <div class="invoice-header">
                        <img src="./assets/imgs/logo.jpg" alt="Error" style="width:10%">
                        <p>Eastern Visayas State University</p>
                        <br>
                        <p>Information Technology First Year 2 Sem Grade Record School Year 2026</p>
                        <br>
                    </div>
                    
                    <div class="invoice-details">
                        <?php
                            // SQL query to select data
                            $sql = "SELECT * FROM first_year_it_second_sem_student_record_school_year_2026";
                            $result = $link->query($sql);

                            // Check if there are results
                            if ($result->num_rows > 0) {
                                // Output data for each row
                                echo "<table border='1'>
                                        <tr>
                                            <th>Student ID</th>
                                            <th>Student Name</th>
                                            <th>Grade Status</th>
                                        </tr>";
                                while($row = $result->fetch_assoc()) {
                                    echo "<tr>
                                            <td>" . $row["first_year_student_id_second_sem"]. "</td>
                                            <td>" . $row["first_year_student_name_second_sem"]. "</td>
                                            <td>" . $row["first_year_student_grade_second_sem_status"]. "</td>
                                        </tr>";
                                }
                                echo "</table>";
                            } else {
                                echo "0 results";
                            }

                            // Close connection
                            $link->close();
                        ?>

            </div>
        </div>
    </div>
    <!-- =========== Scripts ========= -->
    <script src="assets/js/main.js"></script>
    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    

    
    <script>
        function updateStatus() {
            var form = document.getElementById('statusForm');
            var formData = new FormData(form);

            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'update_status_rent.php', true);
            xhr.onload = function () {
                if (xhr.status === 200) {
                    alert(xhr.responseText);
                } else {
                    alert('An error occurred!');
                }
            };
            xhr.send(formData);
        }
    </script>

<!--icon dropdown-->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const downIcon = document.querySelector('.icon-down');
            const upIcon = document.querySelector('.icon-up');
            const dropdownContent = document.querySelector('.dropdown-content_a');

            downIcon.addEventListener('click', function(event) {
                event.stopPropagation(); // Prevent event from bubbling up
                dropdownContent.style.display = 'block';
                downIcon.style.display = 'none';
                upIcon.style.display = 'block';
            });

            upIcon.addEventListener('click', function(event) {
                event.stopPropagation(); // Prevent event from bubbling up
                dropdownContent.style.display = 'none';
                downIcon.style.display = 'block';
                upIcon.style.display = 'none';
            });

            document.addEventListener('click', function(event) {
                if (!dropdownContent.contains(event.target) && !downIcon.contains(event.target) && !upIcon.contains(event.target)) {
                    dropdownContent.style.display = 'none';
                    downIcon.style.display = 'block';
                    upIcon.style.display = 'none';
                }
            });
        });
    </script>


<!------------------------------------------ first sem ------------------------------------------------->
<script>
    // Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("openModalBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

<script>//edit student second sem info first sem
// Function to open the modal and populate it with data
function openModal(id, studentId, Firstsem) {
    document.getElementById('first_year_student_grade_status_TogaModal').style.display = 'block';
    document.getElementById('modal_id').value = id;
    document.getElementById('modal_first_year_student_id_second_sem').value = studentId;
    document.getElementById('modal_first_year_student_name_second_sem').value = Firstsem;
}

// Function to close the modal
function closeModal() {
    document.getElementById('first_year_student_grade_status_TogaModal').style.display = 'none';
}

// Add event listener for the close button
document.querySelector('.close-first_year_student_grade_status').addEventListener('click', closeModal);

// Close modal when clicking outside of the modal content
window.addEventListener('click', function(event) {
    if (event.target === document.getElementById('first_year_student_grade_status_TogaModal')) {
        closeModal();
    }
});
</script>

<script>// delete student second sem info first sem
// Function to open the delete modal and set the record ID
function openDeleteModal(first_year_student_id_second_sem) {
    document.getElementById('first_year_student_id_second_sem').value = first_year_student_id_second_sem;
    document.getElementById('deleteModal').style.display = 'block';
}

// Function to close the delete modal
function closeDeleteModal() {
    document.getElementById('deleteModal').style.display = 'none';
}

// Add event listener for the close button
document.querySelector('.close-delete').addEventListener('click', closeDeleteModal);

// Close modal when clicking outside of the modal content
window.addEventListener('click', function(event) {
    if (event.target === document.getElementById('deleteModal')) {
        closeDeleteModal();
    }
});
</script>

</body>
</html>