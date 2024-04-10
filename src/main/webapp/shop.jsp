<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:home_layout title="Shop">
  <jsp:body>
    <!-- breadcrumb-section -->
    <div class="breadcrumb-section breadcrumb-bg">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 offset-lg-2 text-center">
            <div class="breadcrumb-text">
              <p>Fresh and Organic</p>
              <h1>Shop</h1>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end breadcrumb section -->

    <!-- error -->

    <jsp:useBean id="error" scope="request" type="java.lang.String"/>
    <c:if test="${not empty error}">
      <div class="alert alert-danger">
          ${error}
      </div>
    </c:if>

    <!-- products -->
    <div class="product-section mt-150 mb-150">
      <div class="container">

        <div class="row">
          <div class="col-md-12">
            <div class="product-filters">
              <ul>
                <li
                    class="${param.categoryId == null ? 'active' : ''} test">
                  <a
                      href="${pageContext.request.contextPath}/shop">All</a>
                </li>
                <jsp:useBean id="categories" scope="request" type="java.util.List"/>
                <c:forEach
                    items="${categories}"
                    var="category">
                  <li
                      class="${category.id eq param.categoryId ? 'active' : ''}">
                    <a
                        href="${pageContext.request.contextPath}/shop?categoryId=${category.id}">
                        ${category.name}
                    </a>
                  </li>
                </c:forEach>
              </ul>
            </div>
          </div>
        </div>

        <div class="row product-lists">
          <jsp:useBean id="products" scope="request" type="java.util.List"/>
          <c:forEach
              items="${products}"
              var="product">
            <div class="col-lg-4 col-md-6 text-center">
              <div class="single-product-item">
                <div class="product-image">
                  <a href="${pageContext.request.contextPath}/shop/${product.id}"><img
                      src="${product.image}"
                      alt=""></a>
                </div>
                <h3>${product.name}</h3>
                <p class="product-price">
                  <span>Per Kg</span> ${product.salePrice}$ </p>
                <a
                    href="${pageContext.request.contextPath}/cart?productId=${product.id}&action=add"
                    class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
              </div>
            </div>
          </c:forEach>
        </div>

        <div class="row">
          <div class="col-lg-12 text-center">
            <div class="pagination-wrap">
              <ul>
                <li><a href="#">Prev</a></li>
                <li><a href="#">1</a></li>
                <li><a
                    class="active"
                    href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">Next</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end products -->

    <!-- logo carousel -->
    <div class="logo-carousel-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="logo-carousel-inner">
              <div class="single-logo-item">
                <img
                    src="assets/img/company-logos/1.png"
                    alt="">
              </div>
              <div class="single-logo-item">
                <img
                    src="assets/img/company-logos/2.png"
                    alt="">
              </div>
              <div class="single-logo-item">
                <img
                    src="assets/img/company-logos/3.png"
                    alt="">
              </div>
              <div class="single-logo-item">
                <img
                    src="assets/img/company-logos/4.png"
                    alt="">
              </div>
              <div class="single-logo-item">
                <img
                    src="assets/img/company-logos/5.png"
                    alt="">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end logo carousel -->



  </jsp:body>
</t:home_layout>