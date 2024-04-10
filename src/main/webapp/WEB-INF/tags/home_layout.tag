<%@tag language="java" pageEncoding="UTF-8" %>
<%@attribute name="title" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%-- favicon --%>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/img/favicon.png"/>
    <!-- google font -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
        rel="stylesheet"/>
    <link
        href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
        rel="stylesheet"/>
    <!-- fontawesome -->
    <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/all.min.css"/>
    <!-- bootstrap -->
    <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css"/>
    <!-- owl carousel -->
    <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/owl.carousel.css"/>
    <!-- magnific popup -->
    <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/magnific-popup.css"/>
    <!-- animate css -->
    <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/animate.css"/>
    <!-- mean menu css -->
    <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/meanmenu.min.css"/>
    <!-- main style -->
    <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/main.css"/>
    <!-- responsive -->
    <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/responsive.css"/>
    <title><%=title%>
    </title>
  </head>
  <body>
    <!--PreLoader-->
    <div class="loader">
      <div class="loader-inner">
        <div class="circle"></div>
      </div>
    </div>
    <!--PreLoader Ends-->
    <jsp:include page="/views/header.jsp" />
    <!-- search area -->
    <div class="search-area">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <span class="close-btn"><i class="fas fa-window-close"></i></span>
            <div class="search-bar">
              <div class="search-bar-tablecell">
                <h3>Search For:</h3>
                <label for="keywords" hidden></label>
                <input
                    type="text"
                    id="keywords"
                    placeholder="Keywords">
                <button type="submit">
                  Search <i class="fas fa-search"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end search area -->
    <jsp:doBody/>
    <!-- footer -->
    <div class="footer-area">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6">
            <div class="footer-box about-widget">
              <h2 class="widget-title">About us</h2>
              <p>Ut enim ad minim veniam perspiciatis unde omnis iste natus
                error sit voluptatem accusantium doloremque laudantium, totam rem
                aperiam, eaque ipsa quae.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="footer-box get-in-touch">
              <h2 class="widget-title">Get in Touch</h2>
              <ul>
                <li>34/8, East Hukupara, Gifirtok, Sadan.</li>
                <li>support@fruitkha.com</li>
                <li>+00 111 222 3333</li>
              </ul>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="footer-box pages">
              <h2 class="widget-title">Pages</h2>
              <ul>
                <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/about">About</a></li>
                <li><a href="${pageContext.request.contextPath}/shop">Shop</a></li>
                <li><a href="${pageContext.request.contextPath}/news">News</a></li>
                <li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="footer-box subscribe">
              <h2 class="widget-title">Subscribe</h2>
              <p>Subscribe to our mailing list to get the latest updates.</p>
              <form action="">
                <label for="email"></label>
                <input type="email" id="email" placeholder="Email">
                <button type="submit">
                  <i class="fas fa-paper-plane"></i>
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end footer -->
    <!-- copyright -->
    <div class="copyright">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-md-12">
            <p>
              Copyrights &copy; 2019 - <a href="https://imransdesign.com/">Imran
              Hossain</a>, All Rights Reserved.
            </p>
          </div>
          <div class="col-lg-6 text-right col-md-12">
            <div class="social-icons">
              <ul>
                <li><a
                    href="#"
                    target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                <li><a
                    href="#"
                    target="_blank"><i class="fab fa-twitter"></i></a></li>
                <li><a
                    href="#"
                    target="_blank"><i class="fab fa-instagram"></i></a></li>
                <li><a
                    href="#"
                    target="_blank"><i class="fab fa-linkedin"></i></a></li>
                <li><a
                    href="#"
                    target="_blank"><i class="fab fa-dribbble"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end copyright -->
    <!-- jquery -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
    <!-- bootstrap -->
    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>
    <!-- count down -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.countdown.js"></script>
    <!-- isotope -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.isotope-3.0.6.min.js"></script>
    <!-- waypoints -->
    <script src="${pageContext.request.contextPath}/assets/js/waypoints.js"></script>
    <!-- owl carousel -->
    <script src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
    <!-- magnific popup -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.magnific-popup.min.js"></script>
    <!-- mean menu -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.meanmenu.min.js"></script>
    <!-- sticker js -->
    <script src="${pageContext.request.contextPath}/assets/js/sticker.js"></script>
    <!-- main js -->
    <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
  </body>
</html>
