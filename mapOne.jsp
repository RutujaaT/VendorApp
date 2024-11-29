<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%
   
   response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
   
	response.setHeader("Pragma", "no-cache"); 
	
	response.setHeader("Expires","0");
   %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Map</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
	<div class="overlay-one">
        <header class="header-area">
                <!-- site-navbar start -->
                <div class="navbar-area">
                        <nav class="site-navbar">
                            <!-- site menu/nav -->
                            <ul>
                                <li><a href="index.jsp">home</a></li>
                            <li><a href="#">about</a></li>
                            <li><a href="#">service</a></li>
                            <li><a href="login.jsp">Login</a></li>
                            <li><a href="http://localhost:8080/VendorsApp/logout">Logout</a></li>
                            </ul>

                            <!-- nav-toggler for mobile version only -->
                            <button class="nav-toggler">
                                <span></span>
                            </button>
                        </nav>
                </div>
        </header>
    </div>


    <div class="title">
        <h2><b>V-Mart</b></h2>
    </div>

    <div class="map">
        <div class="container">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3749.1732864290498!2d73.75924747377542!3d20.00124058140333!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb9bbeb0e9c7%3A0x40a52546ee71a3a8!2sI-Tech%20System!5e0!3m2!1sen!2sin!4v1684984876844!5m2!1sen!2sin"
                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>



    <div class="footer">
        <h2>&copy; 2023 My Website. All right reserved</h2>
    </div>
</body>


<script>
    // define all UI variable
    const navToggler = document.querySelector('.nav-toggler');
    const navMenu = document.querySelector('.site-navbar ul');
    const navLinks = document.querySelectorAll('.site-navbar a');

    // load all event listners
    allEventListners();

    // functions of all event listners
    function allEventListners() {
        // toggler icon click event
        navToggler.addEventListener('click', togglerClick);
        // nav links click event
        navLinks.forEach(elem => elem.addEventListener('click', navLinkClick));
    }

    // togglerClick function
    function togglerClick() {
        navToggler.classList.toggle('toggler-open');
        navMenu.classList.toggle('open');
    }

    // navLinkClick function
    function navLinkClick() {
        if (navMenu.classList.contains('open')) {
            navToggler.click();
        }
    }
</script>
</html>