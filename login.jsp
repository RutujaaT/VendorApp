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
<title>Login</title>
<link rel="stylesheet" href="style.css">

</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">


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
                    	<li><a href="login.jsp">Login</a>
                    </li>
                  
                   
                    </ul>

                    <!-- nav-toggler for mobile version only -->
                    <button class="nav-toggler">
                        <span></span>
                    </button>
            </div>
        </header>
    </div>


    <div class="title">
        <h2><b>V-Mart</b></h2>
    </div>


    <div class="container ">
        <div class="card">
            <div class="card-header">
                <div class="text-header">Login</div>
            </div>
            <div class="card-body">
                <form action="login" method="POST">
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input class="form-control" name="username" id="username" type="text" required="required">
                    </div>

                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input class="form-control" name="password" id="password" type="password" required="required">
                    </div>


                    <input type="submit" class="btn" value="submit">
                    <div class="sign-up-button">
                        <p>don't have an account?</p>
                        <div class="sign-up">
                            <a href="signup.jsp">Sign
                                up</a>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>

    <div class="footer">
        <h2>&copy; 2023 My Website. All right reserved</h2>
    </div>

	
</body>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script>
	var status = document.getElementById("status").value;
	if(status == "failed") {
		swal("Invalid username or password!!");
	}
	else if(status == "invalidUsername") {
		swal("Invalid username!!");
	}
	else if(status == "invalidPassword") {
		swal("Invalid password!!");
	}
</script>

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