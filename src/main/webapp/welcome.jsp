<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>

    <!-- Meta Tag -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>DevBlog - Personal Blog</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="images/favicon/favicon.ico">
    <link rel="apple-touch-icon" sizes="144x144" type="image/x-icon" href="images/favicon/apple-touch-icon.png">

    <!-- All CSS Plugins -->
    <link rel="stylesheet" type="text/css" href="css/plugin.css">

    <!-- Main CSS Stylesheet -->
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <!-- Google Web Fonts  -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700">


    <!-- HTML5 shiv and Respond.js support IE8 or Older for HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>

<body>


<!-- Preloader Start -->
<div class="preloader">
    <div class="rounder"></div>
</div>
<!-- Preloader End -->


<div id="main">
    <div class="container">
        <div class="row">


            <!-- About Me (Left Sidebar) Start -->
            <div class="col-md-3">
                <div class="about-fixed">

                    <div class="my-pic">
                        <img src="images/pic/my-pic.png" alt="">
                        <a href="javascript:void(0)" class="collapsed" data-target="#menu" data-toggle="collapse"><i
                                class="icon-menu menu"></i></a>
                        <div id="menu" class="collapse">
                            <ul class="menu-link">
                                <li><a href="about.jsp">About</a></li>
                                <li><a href="work.jsp">Work</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                            </ul>
                        </div>
                    </div>


                    <div class="my-detail">

                        <div class="white-spacing">
                            <h1>${userName}</h1>
                            <span>Developer</span>
                        </div>

                        <ul class="social-icon">
                            <li><a href="#" target="_blank" class="facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" target="_blank" class="twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" target="_blank" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#" target="_blank" class="github"><i class="fa fa-github"></i></a></li>
                        </ul>

                    </div>
                </div>
            </div>
            <!-- About Me (Left Sidebar) End -->


            <!-- Blog Post (Right Sidebar) Start -->
            <div class="col-md-9">
                <div class="col-md-12 page-body">
                    <div class="row">


                        <div class="sub-title">
                            <h2>My Blog</h2>
                            <a href="contact.jsp"><i class="icon-envelope"></i></a>
                        </div>


                        <c:forEach items="${posts}" var="post">
                        <div class="col-md-12 blog-post"><%-- content-page--%>
                            <!-- Blog Post Start -->
                            <div class="col-md-12 blog-post">
                                <div class="post-title">
                                    <a href="post?id=${post.id}"><h1><c:out value="${post.title}"/></h1></a>
                                </div>
                                <div class="post-info">

                                    <span><c:out value="${post.date}"/> / by <a href="#" target="_blank"><c:out
                                            value="${post.user.nameAndSurname}"/></a></span>
                                </div>
                                <p><c:out value="${post.shortText}"/>...</p>
                                <a href="post?id=${post.id}"
                                   class="button button-style button-anim fa fa-long-arrow-right"><span>Read More</span></a>
                            </div>
                            </c:forEach>
                            <!-- Blog Post End -->

                            <%-- <div class="col-md-12 text-center">
                                 <a href="javascript:void(0)" id="load-more-post" class="load-more-button">Load</a>
                                 <div id="post-end-message"></div>
                             </div>--%>

                        </div>

                    </div>


                </div>


                <!-- Footer Start -->
                <div class="col-md-12 page-body margin-top-50 footer">
                    <footer>
                        <ul class="menu-link">
                            <li><a href="welcome.jsp">Home</a></li>
                            <li><a href="about.jsp">About</a></li>
                            <li><a href="work.jsp">Work</a></li>
                            <li><a href="contact.jsp">Contact</a></li>
                        </ul>

                        <p>© Copyright 2016 DevBlog. All rights reserved</p>


                        <!-- UiPasta Credit Start -->
                        <div class="uipasta-credit">Design By <a href="http://www.uipasta.com"
                                                                 target="_blank">UiPasta</a></div>
                        <!-- UiPasta Credit End -->


                    </footer>
                </div>
                <!-- Footer End -->


            </div>
            <!-- Blog Post (Right Sidebar) End -->

        </div>
    </div>
</div>


<!-- Back to Top Start -->
<a href="#" class="scroll-to-top"><i class="fa fa-long-arrow-up"></i></a>
<!-- Back to Top End -->


<!-- All Javascript Plugins  -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/plugin.js"></script>

<!-- Main Javascript File  -->
<script type="text/javascript" src="js/scripts.js"></script>


</body>
</html>