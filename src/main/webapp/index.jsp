<%@ page import="com.jemeisha.proxy.LogicService" %>
<%@ page import="com.jemeisha.proxy.Logic" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cab book template">
    <meta name="keywords" content="HTML,CSS,JavaScript">
    <meta name="author" content="Taruunnn">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="WEB-INF/partials/commonIncludes.jsp"%>
    <link rel="stylesheet" href="CSS/customStyle.css">
    <link rel="stylesheet" href="CSS/responsive.css">
    <link rel="shortcut icon" href="https://e7.pngegg.com/pngimages/58/174/png-clipart-gold-colored-letter-g-illustration-capital-letter-g-miscellaneous-alphabet-thumbnail.png">
    <title>Go Cheeta </title>
</head>
<body>
<%
    LogicService logicService= new LogicService();
    Logic logic= logicService.getLogicPort();

    Cookie[] cookies= request.getCookies(); //get all cookies

    Cookie loginCookie=null;
    for(int x=0;x<cookies.length;x++){
        if(cookies[x].getName().equals("login_cookie")){
            loginCookie=cookies[x];
            break;
        }
    }

    //boolean isLoggedIn= loginCookie!=null;
    // boolean isLoggedIn= true;
    boolean isLoggedIn= false;
    if(loginCookie!=null){
        isLoggedIn=logic.isLoggedIn(loginCookie.getValue());
    }

%>

<header>
    <nav class="navbar  fixed-top navbar-expand-lg navbar-light  " style="background: #feeb03">
        <a class="navbar-brand" href="#">

            <span class="nav-logo-text"> Go Cheeta</span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <div class="mr-auto"></div>
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#register-section"><%= isLoggedIn?"Book":"Register"%></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#Feedback">Feedback</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contact">Contact us</a>
                </li>

            </ul>
        </div>
    </nav>

    <div class="carousel-bg">
        <div id="carouselExampleIndicators" class="carousel slide container" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="margin-top">
                                <h6 class="header-span">REACH YOUR <b>DESTINATION</b> </h6>
                                <h1 class="header-larg-text">LET'S<span class="header-cricle animated">go</span></h1>
                                <h3 class="header-heading">starts at <b> Rs.80</b> <sup>/km</sup></h3>

                                <span class="headedr-span-sec"> Reach your destination with the cheapest prices for your ride. Enjoy your life with us.</span>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <button type="button" class="custom-btn btn btn-light"><%= isLoggedIn?"BOOK NOW":"Register NOW"%></button>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <img src="img/slider1.svg" class="d-block w-100" alt="...">
                        </div>
                    </div>

                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-sm-6">
                            <h6 class="header-span">In Our<b> Package</b> </h6>
                            <h1 class="header-larg-text">Enjo<span class="header-cricle animated">y</span></h1>
                            <h3 class="header-heading">Only <b> RS.200</b> <sup>/hr</sup></h3>

                            <span class="headedr-span-sec"> We will wait until you complete your travel goals. First 15 minutes will be on us. </span>
                            <div class="row">
                                <div class="col-sm-6">
                                    <button type="button" class="custom-btn btn btn-light"><a href="#book-section" style="color: black"><%= isLoggedIn?"BOOK NOW":"REGISTER NOW"%></a></button>
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <img src="img/slider2.svg" class="d-block w-100" alt="...">
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-sm-6">
                            <h6 class="header-span">Ready To Book Your  <b>ride</b> </h6>
                            <h1 class="header-larg-text">FREE<span class="header-cricle animated">0/=</span></h1>
                            <h3 class="header-heading">First Ride  <b> 1</b> <sup>/km</sup></h3>

                            <span class="headedr-span-sec"> We will give our new members a free 1Km on their fist ride. </span>
                            <div class="row">
                                <div class="col-sm-6">
                                    <button type="button" class="custom-btn btn btn-light"><%= isLoggedIn?"BOOK NOW":"REGISTER NOW"%></button>
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <img src="img/slider2.svg" class="d-block w-100" alt="...">
                        </div>
                    </div>
                </div>
            </div>

            <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    </div>
</header>
<main>
    <!-- section book cab-->
    <%

        if(!isLoggedIn){
    %>
    <section class="bookcab " id="book-section">

        <div class="container container-shadow">
            <div class="row">
                <div class="col-md-5 padding70 bg-white">
                    <div class="short-intro">
                        <h4 class="bookcab-heading"> Sign-Up
                            <br> <span>GO Cheeta</span>
                        </h4>
                        <p>Enjoy the feeling of a safe ride. Book a cab for the best price of the whole island. Travel to your favourite destinations with Go Cheeta. Us for a better tomorrow. </p>
                        <blockquote class="custom-blockquote"><i class="bb"> GO Cheeta, for a safer tomorrow </i> </blockquote>
                        <ul class="list">
                            <li>Super & reliable services</li>
                            <li>24 X 7 customer support provide</li>
                            <li> Large Range of Car Models</li>
                            <li>GPS Tracking and help</li>
                            <li> A cab for everyone at anytime.</li>
                        </ul>
                        <div class="buttons">
                            <button type="button" class="btn btn-warning btn-cus" > <a href="#contact" style="color: black">CONTACT US</a> </button> <button type="button" class="btn btn-light btn-cus" ><a href="#book-section" style="color: black">BOOK NOW </a> </button>
                        </div>
                    </div>
                </div>

                <div class="col-md-7 padding70 bg-yellow">

                    <form class="text-center" style="color: #757575;" action="/register" method="post" >
                        <center>
                            <br>

                        </center>
                        <div class="form-row">
                            <div class="col">
                                <!-- First name -->
                                <div class="md-form">
                                    <input type="text"  class="form-control" placeholder="Enter your Username"  name="username" required/>

                                </div><br>
                            </div><br>
                            <div class="col">
                                <!-- Last name -->
                                <div >
                                    <input type="password"  class="form-control" placeholder="Enter password"  name="password" required/>

                                </div><br>
                            </div><br>
                        </div>




                        <br>

                        <!-- E-mail -->
                        <div >
                            <input type="text"  class="form-control" placeholder="First Name"  name="fname"  required/>

                        </div><br>

                        <!-- Password -->
                        <div >

                            <input type="text" class="form-control" placeholder="Last Name" name="lname" required />

                        </div>

                        <br>

                        <div>

                        </div>

                        <div >
                            <input type="text" class="form-control" placeholder="Enter your Mobile number"  name="mobile" maxlength="10" required/>

                        </div><br>




                        <!-- Sign up button -->
                        <input class="btn btn-outline-success btn-rounded btn-block my-4 waves-effect z-depth-0"
                               type="submit" name="submit" value="Sign up">

                        <p>Already have an Account?
                            <a href="test1.html">Sign in</a>
                        </p>

                        <hr>

                        <!-- Terms of service -->
                        <p>By clicking
                            <em>Sign up</em> you agree to our
                            <a href="" target="_blank">terms of service</a>
                        </p>

                    </form>



                </div>
            </div>
        </div>
    </section>

    <%
        }else{

    %>
    <section class="bookcab " id="book-section">

        <div class="container container-shadow">
            <div class="row">
                <div class="col-md-5 padding70 bg-white">
                    <div class="short-intro">
                        <h4 class="bookcab-heading"> Book <small> a cab</small>
                            <br> <span>GO Cheeta</span>
                        </h4>
                        <p>Enjoy the feeling of a safe ride. Book a cab for the best price of the whole island. Travel to your favourite destinations with Go Cheeta. Us for a better tomorrow. </p>
                        <blockquote class="custom-blockquote"><i class="bb"> GO Cheeta, for a safer tomorrow </i> </blockquote>
                        <ul class="list">
                            <li>Super & reliable services</li>
                            <li>24 X 7 customer support provide</li>
                            <li> Large Range of Car Models</li>
                            <li>GPS Tracking and help</li>
                            <li> A cab for everyone at anytime.</li>
                        </ul>
                        <div class="buttons">
                            <button type="button" class="btn btn-warning btn-cus" > <a href="#contact" style="color: black">CONTACT US</a> </button> <button type="button" class="btn btn-light btn-cus" ><a href="#book-section" style="color: black">BOOK NOW </a> </button>
                        </div>
                    </div>
                </div>

                <div class="col-md-7 padding70 bg-yellow">
                    <form>
                        <div class="row">


                            <div class="col-sm-6">
                                <div class="btn-group bootstrap-select input-group-btn form-control dropup">
                                    <div class="btn-group" role="group">
                                        <button id="btnGroupDrop1" type="button" class="btn dropdown-toggle btn-default bs-placeholder btn-default-custom" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Select Pickup
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                            <a class="dropdown-item" href="#">Nugegoda</a>
                                            <a class="dropdown-item" href="#">Gampaha</a>
                                            <a class="dropdown-item" href="#">Galle</a>
                                            <a class="dropdown-item" href="#">Kandy</a>
                                            <a class="dropdown-item" href="#">Kurunegala</a>
                                            <a class="dropdown-item" href="#">Jaffna</a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="btn-group bootstrap-select input-group-btn form-control dropup">
                                    <div class="btn-group" role="group">
                                        <button id="btnGroupDrop1" type="button" class="btn dropdown-toggle btn-default bs-placeholder btn-default-custom" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Select Destination
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                            <a class="dropdown-item" href="#">Nugegoda</a>
                                            <a class="dropdown-item" href="#">Gampaha</a>
                                            <a class="dropdown-item" href="#">Galle</a>
                                            <a class="dropdown-item" href="#">Kandy</a>
                                            <a class="dropdown-item" href="#">Kurunegala</a>
                                            <a class="dropdown-item" href="#">Jaffna</a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="btn-group bootstrap-select input-group-btn form-control dropup">
                                    <input type="text" name="" class="form-input" placeholder="Pickup location">
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="btn-group bootstrap-select input-group-btn form-control dropup">
                                    <input type="text" name="" class="form-input " placeholder="Drop of Location">
                                </div>
                            </div>



                        </div>


                        <div class="col-sm-12 ">
                            <div class="buttons">
                                <button type="button" class="btn btn-light btn-cus">ORDER NOW</button>

                                <button type="button" class="btn btn-success btn-cus">RESET</button>
                            </div>
                        </div>


                    </form>


                </div>
            </div>
        </div>
    </section>
    <%}
%>
    <!-- testmonials-->
    <section class="bookcab" id="Feedback">
        <div class="container container-shadow">
            <div class="row">
                <div class="col-md-5 padding-custom bg-white">
                    <div class="short-intro">
                        <h4 class="bookcab-heading"> PASSENGER  <small> FEEDBACK</small></h4>
                        <br> <span>WHAT OUR PASSENGERS SAY</span>
                        <p style="    margin-top: 46px;">GO Cheeta is not just an ordinary cab-service. They take their service to the next level. I have never experienced fresh air inside the vehicle, which was so amazing, so refreshing. The cleanliness of the vehicles are so good. The driver was so helpful. I personally loved their service.  </p>

                        <div class="buttons">
                            <button type="button" class="btn btn-warning btn-cus" > <a href="#contact" style="color: black">CONTACT US</a> </button> <button type="button" class="btn btn-light btn-cus" ><a href="#book-section" style="color: black">BOOK NOW </a> </button>
                        </div>
                    </div>
                </div>
                <div class="col-md-7 padding-custom">
                    <section class="text-center my-5">

                        <div class="wrapper-carousel-fix">

                            <div id="carousel-example-1" class="carousel no-flex testimonial-carousel slide carousel-fade" data-ride="carousel"
                                 data-interval="false">

                                <div class="carousel-inner" role="listbox">

                                    <div class="carousel-item active">
                                        <div class="testimonial">

                                            <div class="avatar mx-auto mb-4">
                                                <img src="img/card-img/driver1.svg" width="80px" height="80px" class="rounded-circle ">
                                            </div>

                                            <p>
                                                <i class="fas fa-quote-left"></i> GO Cheeta is not just an ordinary cab-service. They take their service to the next level.


                                            </p>

                                            <h4 >Maria Perera</h4>
                                            <h6 >PASSENGER </h6>

                                        </div>
                                    </div>

                                    <div class="carousel-item">
                                        <div class="testimonial">

                                            <div class="avatar mx-auto mb-4">
                                                <img src="img/card-img/driver1.svg" width="80px" height="80px" class="rounded-circle ">
                                            </div>

                                            <p>
                                                <i class="fas fa-quote-left"></i> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut
                                                odit
                                            </p>
                                            <h4 class="">Maria Kate</h4>
                                            <h6 class="font-weight-bold my-3">PASSENGER </h6>

                                        </div>
                                    </div>

                                </div>

                                <a class="carousel-control-prev left carousel-control" href="#carousel-example-1" role="button"
                                   data-slide="prev">
                                    <span class="icon-prev" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next right carousel-control" href="#carousel-example-1" role="button"
                                   data-slide="next">
                                    <span class="icon-next" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>

                            </div>

                    </section>

                </div>
            </div>
        </div>
    </section>
</main>
<!--footer section-->
<footer class="footer-padding180 footer" id="contact">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="short-intro" style="margin: 65px 0px 0px 0px;">
                    <h4 class="bookcab-heading yellow"> contact <small> </small>
                    </h4>
                    <address>
                        <strong>HEAD OFFICE</strong>
                        <p>1/B Happy street, Nugegoda <br> Sri Lanka</p>
                        <ul class="contact-info">
                            <li><i class="fa fa-headphones"></i> (94) 999 - 888 - 12 </li>
                            <li><i class="fa fa-print"></i> 123-456-7890 </li>
                            <li><i class="fa fa-envelope"></i> <a href="mailTo:support@GoCheeta.com">support@GoCheeta.com</a> </li>
                            <li><i class="fa fa-briefcase "></i> <a href="mailTo:career@GoCheeta.com">career@GoCheeta.com</a> </li>
                        </ul>
                    </address>

                    <ul class="social-icon" style="">
                        <li><a href="" class="fab fa-facebook-square"></a></li>
                        <li><a href="" class="fab fa-twitter-square"></a></li>
                        <li><a href="" class="fab fa-youtube-square"></a></li>
                        <li><a href="" class="fab fa-pinterest-square"></a></li>
                    </ul>

                    <p class="copyright">© 2022 <i>GoCheeta</i> All Rights Reserved</p>

                </div>
                </h4>
            </div>
            <div class="col-md-5 msg-form footer-padding">
                <h3 class="toll-free">
                    TOLL-FREE (94) 112 - 191 -911
                </h3>
                <small>DO YOU HAVE A QUESTION ? FILL THE FORM</small>
                <div class="col-md-12" style="margin-top: 41px">
                    <form>
                        <div class="form-group">

                            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Name">
                        </div>
                        <div class="form-group">

                            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Email">
                        </div>
                        <div class="form-group">

                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Your message"></textarea>
                        </div>
                    </form>
                </div>
                <div class="col-md-12">
                    <button type="button" class="btn btn-warning ">Send Message</button>
                </div>
            </div>
            <div class="col-md-4 no-padding map-container">
                <div style="width: 100%"><iframe width="100%" height="600" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Nugegoda,%20Sri%20Lanka+(GO%20Cheeta)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"><a href="https://www.maps.ie/distance-area-calculator.html">measure area map</a></iframe></div>
            </div>
        </div>
</footer>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>