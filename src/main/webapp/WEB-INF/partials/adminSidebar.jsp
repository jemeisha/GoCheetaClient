<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/12/2022
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="layoutSidenav" class="h-full w-60">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">

            <div class="sb-sidenav-menu">
                <div class="nav">

                    <a class="nav-link" href="/admin">
                        <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                        Admin
                    </a>
                    <div class="sb-sidenav-menu-heading">Function</div>
                    <a class="nav-link" href="/admin/bookings" >
                        <div class="sb-nav-link-icon"><i class="fa fa-book"></i></div>
                        Manage Bookings
                    </a>

                    <a class="nav-link" href="/admin/branches" >
                        <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                        Branches
                    </a>

                    <a class="nav-link" href="/admin/vehicle-categories" >
                        <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                        Vehicle Categories
                    </a>

                    <a class="nav-link" href="/admin/drivers" >
                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                        Manage Drivers
                    </a>

                    <a class="nav-link" href="/admin/customers">
                        <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                        Manage Customers
                    </a>

                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Logged in as:</div>
            </div>
        </nav>
    </div>

</div>
