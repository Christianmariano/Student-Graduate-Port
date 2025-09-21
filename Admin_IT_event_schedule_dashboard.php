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
// Get the logged-in username from the session
$username = $_SESSION["username"];

// Optional: Fetch additional details from the database (e.g., profile info)
$sql = "SELECT * FROM admin WHERE username = ?";
$stmt = $link->prepare($sql);
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();

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
    <link rel="stylesheet" 
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.css' rel='stylesheet' />

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

.navigation ul li a .fas{
  position: relative;
  display: block;
  min-width: 60px;
  height: 60px;
  line-height: 75px;
  text-align: center;
}
.navigation ul li a .fas{
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
        .form-container {
            margin-top: 20px;
        }
        .form-container form {
            display: flex;
            flex-direction: column;
        }
        .form-container input, .form-container button {
            margin-bottom: 10px;
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
            margin-left: 5%;
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
        #pagination {
            text-align: center;
            margin-top: 20px;
        }

        #pagination button {
            padding: 10px 20px;
            margin: 0 5px;
            cursor: pointer;
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

        .card-link {
            text-decoration: none;
            color: inherit;
            display: block;
        }

        /* Style the container of the navigation to allow overflow 
        .navigation-container {
            max-height: 300vh; /* Ensure it takes up the full viewport height 
            overflow-y: auto; /* Enable vertical scrolling 
        }*/

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

        .navigation ul li a .fas{
        position: relative;
        display: block;
        min-width: 60px;
        height: 60px;
        line-height: 75px;
        text-align: center;
        }
        .navigation ul li a .fas{
        font-size: 1.75rem;
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
        .view{
            height: 90%;
            background: #555;
        } 
        
        /* Initially hide the dropdown content */
        .dropdown-content {
            display: none;
        }

        /* Show dropdown content when the 'show' class is added */
        .dropdown-content.show {
            display: block;
        }

        /* Optional: Smooth transition for dropdown content */
        .dropdown-content {
            transition: max-height 0.3s ease-in-out;
            max-height: 0;
            overflow: hidden;
        }

        .dropdown-content.show {
            max-height: 500px; /* adjust based on the content size */
        }
        /* Styling for the toggle link */
        .dropdown-toggle {
            display: flex;
            align-items: center; /* Aligns the items (icon, title, arrow) vertically */
            text-decoration: none;
            color: #000;
            font-weight: bold;
        }

        /* Icon for the pen (keeps it to the left) */
        .dropdown-toggle .icon {
            margin-right: 8px; /* Space between icon and title */
        }
        .view_record{
            font-size: 20px;
            color:white;
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
                        <a href="Admin_IT_event_schedule_dashboard.php">
                            <span class="icon">
                            <i class="fa-regular fas fa-calendar"></i>
                            </span>
                            <span class="title">Event Schedule</span>
                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="admin_it_student_activity_school_year_2024.php">
                            <span class="icon">
                            <i class="fa-solid fas fa-file-pen"></i>
                            </span>
                            <span class="title">Student Activity Attendace</span>
                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" onclick="toggleDropdown(event)">
                            <span class="icon">
                                <i class="fa-solid fas fa-file-pen"></i>
                            </span>
                            <span class="title">Capstone Project</span>
                            <span class="arrow">
                                <i class="fa-solid fa-chevron-down"></i>
                            </span>
                        </a>
                        <div class="dropdown-content">
                            <a style="color: black" href="admin_information_technology_caption_project_school_year_2024.php">School Year 2024-2025</a>
                            <a style="color: black" href="admin_information_technology_caption_project_school_year_2025.php">School Year 2025-2026</a>
                            <a style="color: black" href="admin_information_technology_caption_project_school_year_2026.php">School Year 2026-2027</a>
                            <a style="color: black" href="admin_information_technology_caption_project_school_year_2027.php">School Year 2027-2028</a>
                            <a style="color: black" href="admin_information_technology_caption_project_school_year_2028.php">School Year 2028-2029</a>
                            <a style="color: black" href="admin_information_technology_caption_project_school_year_2029.php">School Year 2029-2030</a>
                        </div>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" onclick="toggleDropdown(event)">
                            <span class="icon">
                            <i class="fa-solid fas fa-user"></i>
                            </span>
                            <span class="title">Student Grade Record</span>
                            <span class="arrow">
                                <i class="fa-solid fa-chevron-down"></i>
                            </span>
                        </a>
                        <div class="dropdown-content">
                            <a style="color: black" href="admin_it_fourth_year_student_grade_year_2024.php">Fourth Year</a>
                        </div>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" onclick="toggleDropdown(event)">
                            <span class="icon">
                            <i class="fa-solid fas fa-user-graduate"></i>
                            </span>
                            <span class="title">Student Rent Toga</span>
                            <span class="arrow">
                                <i class="fa-solid fa-chevron-down"></i>
                            </span>
                        </a>
                        <div class="dropdown-content">
                            <a style="color: black" href="admin_it_department_record_borrow_toga_school_year_2024.php">School Year 2024-2025</a>
                            <a style="color: black" href="admin_it_department_record_borrow_toga_school_year_2025.php">School Year 2025-2026</a>
                            <a style="color: black" href="admin_it_department_record_borrow_toga_school_year_2026.php">School Year 2026-2027</a>
                            <a style="color: black" href="admin_it_department_record_borrow_toga_school_year_2027.php">School Year 2027-2028</a>
                            <a style="color: black" href="admin_it_department_record_borrow_toga_school_year_2028.php">School Year 2028-2029</a>
                            <a style="color: black" href="admin_it_department_record_borrow_toga_school_year_2029.php">School Year 2029-2030</a>
                        </div>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" onclick="toggleDropdown(event)">
                            <span class="icon">
                            <i class="fa-solid fas fa-people-group"></i>
                            </span>
                            <span class="title">Organization / Guild</span>
                            <span class="arrow">
                                <i class="fa-solid fa-chevron-down"></i>
                            </span>
                        </a>
                        <div class="dropdown-content">
                            <a style="color: black" href="admin_jpg_year_2024.php">JPG</a>
                        </div>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" onclick="toggleDropdown(event)">
                            <span class="icon">
                            <i class="fas fa-briefcase"></i>
                            </span>
                            <span class="title">OJT Record</span>
                            <span class="arrow">
                                <i class="fa-solid fa-chevron-down"></i>
                            </span>
                        </a>
                        <div class="dropdown-content">
                            <a style="color: black" href="admin_information_technology_record_ojt_school_year_2024.php">School Year 2024-2025</a>
                            <a style="color: black" href="admin_information_technology_record_ojt_school_year_2025.php">School Year 2025-2026</a>
                            <a style="color: black" href="admin_information_technology_record_ojt_school_year_2026.php">School Year 2026-2027</a>
                            <a style="color: black" href="admin_information_technology_record_ojt_school_year_2027.php">School Year 2027-2028</a>
                            <a style="color: black" href="admin_information_technology_record_ojt_school_year_2028.php">School Year 2028-2029</a>
                            <a style="color: black" href="admin_information_technology_record_ojt_school_year_2029.php">School Year 2029-2030</a>
                        </div>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" onclick="toggleDropdown(event)">
                            <span class="icon">
                            <i class="fa-solid fas fa-tree"></i>
                            </span>
                            <span class="title">Tree Planting Record</span>
                            <span class="arrow">
                                <i class="fa-solid fa-chevron-down"></i>
                            </span>
                        </a>
                        <div class="dropdown-content">
                            <a style="color: black" href="admin_information_technology_record_tree_planting_school_year_2024.php">School Year 2024-2025</a>
                            <a style="color: black" href="admin_information_technology_record_tree_planting_school_year_2025.php">School Year 2025-2026</a>
                            <a style="color: black" href="admin_information_technology_record_tree_planting_school_year_2026.php">School Year 2026-2027</a>
                            <a style="color: black" href="admin_information_technology_record_tree_planting_school_year_2027.php">School Year 2027-2028</a>
                            <a style="color: black" href="admin_information_technology_record_tree_planting_school_year_2028.php">School Year 2028-2029</a>
                            <a style="color: black" href="admin_information_technology_record_tree_planting_school_year_2029.php">School Year 2029-2030</a>
                        </div>
                    </li>
                    
                    <div class="view">
                        <li>
                            <a href="admin_it_monitoring_library_borrow_year_2024.php">
                                <span class="icon">
                                <i class="fa-solid fas fa-book"></i>
                                </span>
                                <span class="title">Student Borrrow Book List</span>
                            </a>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" onclick="toggleDropdown(event)">
                                <span class="icon">
                                <i class="fa-solid fas fa-user"></i>
                                </span>
                                <span class="title">Student Record</span>
                                <span class="arrow">
                                    <i class="fa-solid fa-chevron-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-content">
                                <a style="color: black" href="admin_information_technology_student_record_school_year_2024.php">School Year 2024-2025</a>
                                <a style="color: black" href="admin_information_technology_student_record_school_year_2025.php">School Year 2025-2026</a>
                                <a style="color: black" href="admin_information_technology_student_record_school_year_2026.php">School Year 2026-2027</a>
                                <a style="color: black" href="admin_information_technology_student_record_school_year_2027.php">School Year 2027-2028</a>
                                <a style="color: black" href="admin_information_technology_student_record_school_year_2028.php">School Year 2028-2029</a>
                                <a style="color: black" href="admin_information_technology_student_record_school_year_2029.php">School Year 2029-2030</a>
                            </div>
                        </li>

                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" onclick="toggleDropdown(event)">
                                <span class="icon">
                                <i class="fa-solid fas fa-money-bill"></i>
                                </span>
                                <span class="title">Student Graduation Fee</span>
                                <span class="arrow">
                                    <i class="fa-solid fa-chevron-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-content">
                                <a style="color: black" href="admin_it_department_graduation_fee_school_year_2024.php">School Year 2024-2025</a>
                                <a style="color: black" href="admin_it_department_graduation_fee_school_year_2025.php">School Year 2025-2026</a>
                                <a style="color: black" href="admin_it_department_graduation_fee_school_year_2026.php">School Year 2026-2027</a>
                                <a style="color: black" href="admin_it_department_graduation_fee_school_year_2027.php">School Year 2027-2028</a>
                                <a style="color: black" href="admin_it_department_graduation_fee_school_year_2028.php">School Year 2028-2029</a>
                                <a style="color: black" href="admin_it_department_graduation_fee_school_year_2029.php">School Year 2029-2030</a>
                            </div>
                        </li>
                    </div>

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

                    <!--- Add this line for the down arrow icon ---->

                    <i class="fas fa-chevron-down icon-down"></i>  
                        <!--<h1><?php echo htmlspecialchars($_SESSION["username"]); ?><h1>-->
                      <div class="dropdown-content_a">
                        <a href="admin_information_technology_user_profile_general_info.php">General Info</a>
                        <a href="admin_information_technology_change_password.php">Change Password</a>
                    </div>
                </div>
            </div>
            <p style="margin-left:3%; font-size:40px">Department of Information Technology</p>
            <div class="details">
                <!-- ================= ================ -->
                <div class="document">
                    <div class="cardHeader" style="margin-top:5%;">
                        <h2>Event Schedule</h2>
                    </div>
                    <div id="calendar" style="width:90%"></div>
                </div>
                
                <div class="form-container">
                    <div style="background-color: whitesmoke; color: margin-bottom:5% black; height: 35%;">
                        <form action="IT_add_event.php" method="POST" >
                            <center>
                                <p style="margin-top: 5%; font-size: 20px;">Add Event</p>
                                <hr style="margin-bottom:5%">
                            </center>
                            <p style="font-size: 20px;">Title of Event</p>
                            <input type="text" name="title" style="height: 30px;" placeholder="Event Title" required>
                            <p style="font-size: 20px;">Start Event</p>
                            <input type="date" name="start_date" style="height: 30px;" required>
                            <p style="font-size: 20px;">End Event</p>
                            <input type="date" name="end_date" style="height: 30px;">
                            <button type="submit" style="height: 30px;">Add Event</button>
                        </form>
                    </div>
                    <div style="background-color: whitesmoke; color: black; margin-bottom:5%; height: 25%;">
                        <form action="IT_update_event_title.php" method="POST" style="margin-top: 20px;">
                            <center>
                                <p style="margin-top: 4%; font-size: 20px;">Update Event Title</p>
                                <hr style="margin-bottom:5%">
                            </center>
                            <p style="font-size: 20px;">Current Event Title</p>
                            <input type="text" name="title" style="height: 30px;" placeholder="Current Event Title" required> 
                            <p style="font-size: 20px;">New Event Title</p>
                            <input type="text" name="new_title" style="height: 30px;" placeholder="New Event Title" required>
                            <br>
                            <button type="submit" style="height: 30px;">Update Event</button>
                        </form>
                    </div>

                    <div style="background-color: whitesmoke; color: margin-bottom:5% black; height: 33%;">
                        <form action="IT_update_event_date.php" method="POST" style="margin-top: 20px;">
                            <center>
                                <p style="margin-top: 4%; font-size: 20px;" >Update Event Date</p>
                                <hr style="margin-bottom:5%">
                            </center>
                            <p style="font-size: 20px;">Title of Event</p>
                            <input type="text" name="title" style="height: 30px;" placeholder="Event Title" required> 
                            <p style="font-size: 20px;">Start Event</p>
                            <input type="date" name="start_date" style="height: 30px;">
                            <p style="font-size: 20px;">End Event</p>
                            <input type="date" style="height: 30px;" name="end_date">
                            <button type="submit" style="height: 30px;">Update Event</button>
                        </form>
                    </div>
                    <div style="background-color: whitesmoke; color: black; height: 15%;">
                        <form action="IT_delete_event.php" method="POST" style="margin-top: 15px;">
                            <center> 
                                <p style="margin-top: 4%; font-size: 20px;" >Delete Event</p>
                                <hr>
                            </center>
                                <input style="margin-top: 4%;height: 30px;" type="text" name="title" placeholder="Event Title" required>
                                <button style="width: 100%; height: 30px;" type="submit">Delete</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- =========== Scripts ========= -->
    <script src="assets/js/main.js"></script>
    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.js'></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                events: 'fetch_events.php',
                eventColor: '#378006', // Default event color
                eventDidMount: function(info) {
                    // Highlight the event duration
                    if (info.event.extendedProps.end) {
                        let eventElement = info.el;
                        let eventStart = new Date(info.event.start);
                        let eventEnd = new Date(info.event.extendedProps.end);
                        while (eventStart <= eventEnd) {
                            let dayEl = document.querySelector('[data-date="' + eventStart.toISOString().split('T')[0] + '"]');
                            if (dayEl) {
                                dayEl.style.backgroundColor = '#ffd700'; // Highlight color for duration
                            }
                            eventStart.setDate(eventStart.getDate() + 1);
                        }
                    }
                }
            });
            calendar.render();
        });
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
<script>
    function toggleDropdown(event) {
        const dropdown = event.currentTarget.closest('.dropdown');
        const arrow = dropdown.querySelector('.arrow i');
        const dropdownContent = dropdown.querySelector('.dropdown-content');
        
        // Toggle the dropdown visibility
        dropdownContent.classList.toggle('show');

        // Change the icon from down to up
        if (dropdownContent.classList.contains('show')) {
            arrow.classList.remove('fa-chevron-down');
            arrow.classList.add('fa-chevron-up');
        } else {
            arrow.classList.remove('fa-chevron-up');
            arrow.classList.add('fa-chevron-down');
        }
    }
</script>
</body>
</html>
