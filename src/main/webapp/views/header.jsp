<%@ page import="com.example.fruitka.entity.User" %>
<%@ taglib prefix="c" uri="" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
  User user = (User) session.getAttribute("user");
%>
<%-- header --%>
<div
    class="top-header-area"
    id="sticker"
    style="position: relative; background-color: #051922; padding: 15px 0;">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-sm-12 text-center">
        <div class="main-menu-wrap">
          <!-- logo -->
          <div class="site-logo">
            <a href="${pageContext.request.contextPath}/"> <img
                src="${pageContext.request.contextPath}/assets/img/logo.png"
                alt="">
            </a>
          </div>
          <!-- logo -->
          <!-- menu start -->
          <nav class="main-menu">
            <ul>
              <li class="current-list-item"><a href="#">Home</a></li>
              <li><a href="${pageContext.request.contextPath}/about">About</a></li>
              <li><a href="${pageContext.request.contextPath}/shop">Shop</a>
              </li>
              <li><a href="${pageContext.request.contextPath}/news">News</a>
              </li>
              <li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
              <li>
                <div class="header-icons">
                  <a
                      class="shopping-cart"
                      href="${pageContext.request.contextPath}/cart"><i
                      class="fas fa-shopping-cart"></i></a> <a
                    class="mobile-hide search-bar-icon"
                    href="#"><i class="fas fa-search"></i></a>
                  <c:if test="${not empty user}">
                    <a
                        class="account-icon"
                        href="${pageContext.request.contextPath}/account"><i
                        class="fas fa-user"></i></a>
                  </c:if>
                  <c:if test="${empty user}">
                    <a
                        class="login-icon"
                        href="${pageContext.request.contextPath}/login"><i
                        class="fas fa-sign-in-alt"></i></a>
                  </c:if>
                </div>
              </li>
            </ul>
          </nav>
          <a
              class="mobile-show search-bar-icon"
              href="#"><i class="fas fa-search"></i></a>
          <div class="mobile-menu"></div>
          <!-- menu end -->
        </div>
      </div>
    </div>
  </div>
</div>
<%-- end header --%>