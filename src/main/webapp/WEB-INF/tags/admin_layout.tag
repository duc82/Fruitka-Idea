<%@tag language="java" pageEncoding="UTF-8" %>
<%@attribute name="title" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%=title%>
    </title>
    <!-- favicon -->
    <link
        rel="icon"
        type="image/png"
        href="${pageContext.request.contextPath}/assets/img/favicon.png"/>
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
  </head>
  <body>
    <!--PreLoader-->
    <div class="loader">
      <div class="loader-inner">
        <div class="circle"></div>
      </div>
    </div>

    <div class="position-fixed start-0 h-100 d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 280px;">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
        <svg class="bi pe-none me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
        <span class="fs-4">Sidebar</span>
      </a>
      <hr>
      <ul class="nav nav-pills flex-column mb-auto">
        <li class="nav-item">
          <a href="#" class="nav-link active" aria-current="page">
            <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#home"></use></svg>
            Home
          </a>
        </li>
        <li>
          <a href="#" class="nav-link link-body-emphasis">
            <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#speedometer2"></use></svg>
            Dashboard
          </a>
        </li>
        <li>
          <a href="#" class="nav-link link-body-emphasis">
            <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#table"></use></svg>
            Orders
          </a>
        </li>
        <li>
          <a href="#" class="nav-link link-body-emphasis">
            <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#grid"></use></svg>
            Products
          </a>
        </li>
        <li>
          <a href="#" class="nav-link link-body-emphasis">
            <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
            Customers
          </a>
        </li>
      </ul>
      <hr>
      <div class="dropdown">
        <a href="#" class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
          <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
          <strong>mdo</strong>
        </a>
        <ul class="dropdown-menu text-small shadow">
          <li><a class="dropdown-item" href="#">New project...</a></li>
          <li><a class="dropdown-item" href="#">Settings</a></li>
          <li><a class="dropdown-item" href="#">Profile</a></li>
          <li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="#">Sign out</a></li>
        </ul>
      </div>
    </div>

    <jsp:doBody/>

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
