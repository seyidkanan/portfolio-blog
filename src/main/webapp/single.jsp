<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>

    <!-- Meta Tag -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>DevBlog - Personal Blog Template</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="images/favicon/favicon.ico">
    <link rel="apple-touch-icon" sizes="144x144" type="image/x-icon" href="images/favicon/apple-touch-icon.png">

    <!-- All CSS Plugins -->
    <link rel="stylesheet" type="text/css" href="css/plugin.css">

    <!-- Main CSS Stylesheet -->
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <!-- Google Web Fonts  -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700">

    <!-- Syntax Highlighter  -->
    <link rel="stylesheet" type="text/css" href="css/syntax/shCore.css">
    <link rel="stylesheet" type="text/css" href="css/syntax/shThemeDefault.css">


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
                                <li><a href="admin.jsp">Work</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                            </ul>
                        </div>
                    </div>


                    <div class="my-detail">

                        <div class="white-spacing">
                            <h1>${post.user.nameAndSurname}</h1>
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
                            <a href="/" title="Go to Home Page"><h2>Back Home</h2></a>
                            <a href="#comment" class="smoth-scroll"><i class="icon-bubbles"></i></a>
                        </div>


                        <div class="col-md-12 content-page">
                            <div class="col-md-12 blog-post">


                                <!-- Post Headline Start -->
                                <div class="post-title">
                                    <h1>${post.title}</h1>
                                </div>
                                <!-- Post Headline End -->


                                <!-- Post Detail Start -->
                                <div class="post-info">
                                    <span>${post.date} / by <a href="#" target="_blank">${post.user.nameAndSurname}</a></span>
                                </div>
                                <!-- Post Detail End -->


                                <p>${post.text}</p>


                                <!-- Post Author Bio Box Start -->
                                <div class="about-author margin-top-70 margin-bottom-50">

                                    <div class="picture">
                                        <img src="images/blog/author.png" class="img-responsive" alt="">
                                    </div>

                                    <div class="c-padding">
                                        <h3>Article By <a href="#" target="_blank" data-toggle="tooltip"
                                                          data-placement="top"
                                                          title="Visit ${post.user.nameAndSurname} Website">${post.user.nameAndSurname}</a>
                                        </h3>
                                        <p>${post.user.desc}</p>
                                    </div>
                                </div>
                                <!-- Post Author Bio Box End -->


                                <!-- You May Also Like Start -->
                                <%-- <div class="you-may-also-like margin-top-50 margin-bottom-50">
                                     <h3>You may also like</h3>
                                     <div class="row">

                                         <div class="col-md-4 col-sm-6 col-xs-12">
                                             <a href="single.jsp"><p>Make mailchimp singup form working with ajax using
                                                 jquery plugin</p></a>
                                         </div>

                                         <div class="col-md-4 col-sm-6 col-xs-12">
                                             <a href="single.jsp"><p>How to design elegant e-mail newsletter in html for
                                                 wish christmas to your subscribers?</p></a>
                                         </div>

                                         <div class="col-md-4 col-sm-6 col-xs-12">
                                             <a href="single.jsp"><p>How to customize a wordpress theme entirely from
                                                 scratch using a child theme?</p></a>
                                         </div>

                                     </div>
                                 </div>--%>
                                <!-- You May Also Like End -->


                                <!-- Post Comment (Disqus) Start -->
                                <div id="comment" class="comment">
                                    <h3>Discuss about post</h3>


                                    <!-- Disqus Code Start  (Please Note: Disqus will not be load on local, You have to upload it on server.)-->
                                    <div id="disqus_thread"></div>
                                    <script>

                                        /***  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS. LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables.

                                         var disqus_config = function () {
							this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
							this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
							};
                                         */

                                        (function () { // DON'T EDIT BELOW THIS LINE
                                            var d = document, s = d.createElement('script');
                                            s.src = '//uipasta.disqus.com/embed.js';   // Please change the url from your own disqus id
                                            s.setAttribute('data-timestamp', +new Date());
                                            (d.head || d.body).appendChild(s);
                                        })();
                                    </script>
                                    <noscript>Please enable JavaScript to view the <a
                                            href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a>
                                    </noscript>
                                    <!-- Disqus Code End -->

                                </div>
                                <!-- Post Comment (Disqus) End -->


                            </div>
                        </div>

                    </div>


                    <!-- Subscribe Form Start -->
                    <div class="col-md-8 col-md-offset-2">
                        <form id="mc-form" method="post"
                              action="http://uipasta.us14.list-manage.com/subscribe/post?u=854825d502cdc101233c08a21&amp;id=86e84d44b7">

                            <div class="subscribe-form margin-top-20">
                                <input id="mc-email" type="email" placeholder="Email Address" class="text-input">
                                <button class="submit-btn" type="submit">Submit</button>
                            </div>
                            <p>Subscribe to my weekly newsletter</p>
                            <label for="mc-email" class="mc-label"></label>
                        </form>

                    </div>
                    <!-- Subscribe Form End -->


                </div>


                <!-- Footer Start -->
                <div class="col-md-12 page-body margin-top-50 footer">
                    <footer>
                        <ul class="menu-link">
                            <li><a href="welcome.jsp">Home</a></li>
                            <li><a href="about.jsp">About</a></li>
                            <li><a href="admin.jsp">Work</a></li>
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


<!-- Endpage Box (Popup When Scroll Down) Start -->
<div id="scroll-down-popup" class="endpage-box">
    <h4>Read Also</h4>
    <a href="#">How to make your company website based on bootstrap framework...</a>
</div>
<!-- Endpage Box (Popup When Scroll Down) End -->


<!-- Back to Top Start -->
<a href="#" class="scroll-to-top"><i class="fa fa-long-arrow-up"></i></a>
<!-- Back to Top End -->


<!-- All Javascript Plugins  -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/plugin.js"></script>

<!-- Main Javascript File  -->
<script type="text/javascript" src="js/scripts.js"></script>

<!-- Syntax Highlighter Javascript File  -->
<script type="text/javascript" src="js/syntax/shCore.js"></script>
<script type="text/javascript" src="js/syntax/shBrushCss.js"></script>
<script type="text/javascript" src="js/syntax/shBrushJScript.js"></script>
<script type="text/javascript" src="js/syntax/shBrushPerl.js"></script>
<script type="text/javascript" src="js/syntax/shBrushPhp.js"></script>
<script type="text/javascript" src="js/syntax/shBrushPlain.js"></script>
<script type="text/javascript" src="js/syntax/shBrushPython.js"></script>
<script type="text/javascript" src="js/syntax/shBrushRuby.js"></script>
<script type="text/javascript" src="js/syntax/shBrushSql.js"></script>
<script type="text/javascript" src="js/syntax/shBrushVb.js"></script>
<script type="text/javascript" src="js/syntax/shBrushXml.js"></script>

<!-- Syntax Highlighter Call Function -->
<script type="text/javascript">
    SyntaxHighlighter.config.clipboardSwf = '../js/syntax/clipboard.swf';
    SyntaxHighlighter.all();
</script>


</body>
</html>
