<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/13/2022
  Time: 6:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cab book template">
    <meta name="keywords" content="HTML,CSS,JavaScript">
    <meta name="author" content="Taruunnn">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="CSS/customStyle.css">
    <link rel="stylesheet" href="CSS/responsive.css">
    <link rel="shortcut icon" href="img/slider1.svg">
    <script src="https://kit.fontawesome.com/6e6e5e1f4c.js"></script>
    <title>Admin Login </title>
</head>

<body background="car.jpg">
<nav class="navbar  fixed-top navbar-expand-lg navbar-light  " style="background: #feeb03">
    <a class="navbar-brand" href="#">

        <span class="nav-logo-text"> Go Cheeta</span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

</nav>
<div style="width:100%; height:auto; ">
    <div align="center"><br><br>
        <!-- Material form register -->
        <div align="center" class="card" style="width:30%; height:auto; margin-top: 120px;" >

            <h4  class=" badge badge-dark card-header white-text text-center py-4">
                <strong><h4>ADMIN LOGIN!</h4></strong>
            </h4>

            <!--Card content-->
            <div  class="card-body px-lg-5 pt-0" >
                <br>
                <!-- Form -->
                <form class="text-center" style="color: #757575;" action="/admin/login" method="post" >

                    <!-- E-mail -->
                    <div >
                        <input type="text"  class="form-control" placeholder="Username" required name="username" id="username" />

                    </div><br>

                    <!-- Password -->
                    <div >

                        <input type="password" class="form-control" placeholder="Password" id="Password" name="password"  required/>

                    </div>


                    <center>


                        <br>

                    </center>

                    <!-- Sign up button -->
                    <input class="btn btn-outline-success btn-rounded btn-block my-4 waves-effect z-depth-0"
                           type="submit" name="btnLogin" value="Sign in">

                    <input class="btn btn-outline-danger btn-rounded btn-block my-4 waves-effect z-depth-0"
                           type="reset" name="btncancel" value="Cancel">

                    <hr>
                    <p>Still don't have an Account?
                        <a href="goSignUp.html">Sign up</a>
                    </p>

                    <!-- Terms of service -->

                    <p>By clicking
                        <em>Sign up</em> you agree to our
                        <a href="" target="_blank">terms of service</a>

                    </p>

                </form>
                <!-- Form -->

            </div>

        </div>

        <br><br>	<br><br>
    </div>

</div>
</body>
</html>

