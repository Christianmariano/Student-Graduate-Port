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
    <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
    <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.css' rel='stylesheet' />
    <style>
        .user {
            position: relative;
            width: 40px;
            height: 40px;
            margin-right: 5%;
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
            <div class="details">
                <!-- ================= ================ -->
                <div class="document">
                    <div class="cardHeader" style="margin-top:5%;">
                        <h2>Student Schedule</h2>
                    </div>
                    <hr style="margin-bottom:5%">
                    <div id="calendar"></div>
                </div>
                <div class="form-container">
                    <div style="background-color: whitesmoke; color: margin-bottom:5% black; height: 35%;">
                        <form action="add_event.php" method="POST" >
                            <center>
                                <p style="margin-top: 5%;">Add Event</p>
                                <hr style="margin-bottom:5%">
                            </center>
                            <p>Title of Event</p>
                            <input type="text" name="title" placeholder="Event Title" required>
                            <p>Start Event</p>
                            <input type="date" name="start_date" required>
                            <p>End Event</p>
                            <input type="date" name="end_date">
                            <button type="submit">Add Event</button>
                        </form>
                    </div>
                    <div style="background-color: whitesmoke; color: margin-bottom:5% black; height: 33%;">
                        <form action="update_event.php" method="POST" style="margin-top: 20px;">
                            <center>
                                <p style="margin-top: 4%;" >Update Event</p>
                                <hr style="margin-bottom:5%">
                            </center>
                            <p>Title of Event</p>
                            <input type="text" name="title" placeholder="Event Title" required> 
                            <p>Start Event</p>
                            <input type="date" name="start_date" required>
                            <p>End Event</p>
                            <input type="date" name="end_date">
                            <button type="submit">Update Event</button>
                        </form>
                    </div>
                    <div style="background-color: whitesmoke; color: black; height: 15%;">
                        <form action="delete_event.php" method="POST" style="margin-top: 15px;">
                            <center> 
                                <p style="margin-top: 4%;">Delete Event</p>
                                <hr>
                            </center>
                                <input style="margin-top: 4%;" type="text" name="title" placeholder="Event Title" required>
                                <button style="width: 100%;" type="submit">Delete</button>
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
