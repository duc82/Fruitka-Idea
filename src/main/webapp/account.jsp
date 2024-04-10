<%@page import="com.example.fruitka.entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<% User user = (User) request.getSession().getAttribute("user"); %>

<t:root_layout title="Account">
  <jsp:body>
    <%--@elvariable id="user" type="com.example.fruitka.entity.User"--%>
    <div class="container py-5">
      <h2>Account</h2>
      Name: ${user.name}<br>
      Email: ${user.email}<br>
      Phone: ${user.phone}<br>
      Role: ${user.role.getLabel()}<br>
      <a href="${pageContext.request.contextPath}/logout">Logout</a>
    </div>
  </jsp:body>
</t:root_layout>