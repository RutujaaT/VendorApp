<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
 <%
 
    
 	
 	if(session.getAttribute("name")==null)
 		response.sendRedirect("login.jsp");
 
 %>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
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
                        <li><a href="index.jsp">home</a>
                        </li>
                        <li><a href="#">about</a></li>
                        <li><a href="#">service</a></li>
                        <li><a
                            href="login.jsp">Login</a>
                    </li>
                    <li><a href="http://localhost:8080/VendorsApp/logout">Logout</a>
                    </li>
                    
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

	


    <div class="overlay-two">
        <div class="container ">
        <div class="display-username">
			<h2 style="text-align: center ">Hello, <%=session.getAttribute("name")%></h2>
		</div>
            <div class="card-one">
                <div class="icon">
                    <img src="./Images/image.svg" alt="">
                </div>
                <a href="mapOne.jsp">
                    <div class="content-two">
                        <h2>Vendors Location</h2>
                    </div>
                </a>
            </div>
        </div>
    </div>


    <div class="overlay-three">
        <div class="container ">
            <div class="card-one">
                <div class="icon">
                    <img src="./Images/map.svg" alt="">
                </div>
                <a href="mapOne.jsp">
                    <div class="content-two">
                        <h2>Vending Area</h2>
                    </div>
                </a>
            </div>
        </div>
    </div>



    <div class="overlay-fore">
        <div class="container">
            <div class="card-one">
                <div class="icon">
                    <img src="./Images/location.svg" alt="">
                </div>
                <a href="mapOne.jsp">
                    <div class="content-two">
                        <h2>SHARE CURRENT LOCATION</h2>
                    </div>
                </a>
            </div>
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