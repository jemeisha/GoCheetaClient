<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/16/2022
  Time: 7:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <a class="nav-link" href="#register-section"><%= request.getParameter("isLoggedIn").equals("true")?"Book":"Register"%></a>
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
