<%@ page import="com.jemeisha.Util" %>
<%@ page import="com.jemeisha.proxy.*" %><%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/15/2022
  Time: 7:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Panel</title>
    <%@include file="WEB-INF/partials/commonIncludes.jsp"%>
    <link rel="stylesheet" href="CSS/customStyle.css">
    <link rel="stylesheet" href="CSS/responsive.css">
    <link rel="shortcut icon" href="https://e7.pngegg.com/pngimages/58/174/png-clipart-gold-colored-letter-g-illustration-capital-letter-g-miscellaneous-alphabet-thumbnail.png">

</head>
<body class="w-full">
<jsp:include page="/WEB-INF/partials/navigation.jsp">
    <jsp:param name="isLoggedIn" value="true"/>
</jsp:include>
<div class="w-full flex flex-col mt-20">
    <%
        LogicService logicService = new LogicService();
        Logic logic = logicService.getLogicPort();
        Customer c = Util.getLoggedInCustomer(request);
        if (c == null) {
            response.sendRedirect("/login");
            return;
        }
        Order ongoingOrder = logic.getCustomerOngoingBooking(c.getUsername());
        boolean isOngoingOrder = ongoingOrder != null;

        if (isOngoingOrder) {
            Branch pickup = logic.getBranchById(ongoingOrder.getPickup());
            Branch dest = logic.getBranchById(ongoingOrder.getDestination());
            Driver d = ongoingOrder.getDriver();
    %>
    <div class="flex flex-col m-2 p-3 rounded border border-solid ">
        <div class=" mx-auto text-2xl font-bold mb-3">Current Booking</div>
        <div class="flex flex-row ">
            <div class="w-32 px-3 flex flex-col ml-auto">
                <div class="text-base mt-auto">Pickup</div>
                <div class="text-xl font-bold mb-auto" ><%=pickup.getBranchName()%>
                </div>
            </div>
            <div class="w-32 px-3 flex flex-col">
                <div class="text-base mt-auto">Destination</div>
                <div class="text-xl font-bold mb-auto"><%=dest.getBranchName()%>
                </div>
            </div>
            <%
                String tripSt = "Driver Arriving";
                switch(ongoingOrder.getBookingState()){
                    case 1:{
                        tripSt = "Driver Arrived";
                        break;
                    }
                    case 2:{
                        tripSt = "Trip Started";
                        break;
                    }
                }
            %>
            <div class="w-32 px-3 flex flex-col">
                <div class="text-base mt-auto">Trip Status</div>
                <div class="text-xl font-bold mb-auto"><%=tripSt%>
                </div>
            </div>
            <div class="w-32 px-3 flex flex-col mr-auto">
                <div class="text-base mt-auto">Total</div>
                <div class="text-xl font-bold mb-auto"><%=ongoingOrder.getTotal()%>
                </div>
            </div>
        </div>
        <div class=" mx-auto text-lg text-gray-500 font-bold my-3">Driver & Vehicle infomation</div>

        <jsp:include page="/WEB-INF/partials/driverRow.jsp">
            <jsp:param name="driverId" value="<%=d.getDriverId()%>"/>
            <jsp:param name="driverFName" value="<%=d.getDriverFirstName()%>"/>
            <jsp:param name="driverLName" value="<%=d.getDriverLastName()%>"/>
            <jsp:param name="driverNic" value="<%=d.getDriverNic()%>"/>
            <jsp:param name="driverMobile" value="<%=d.getDriverMobile()%>"/>
            <jsp:param name="branchId" value="<%=d.getBranchId()%>"/>
            <jsp:param name="vNo" value="<%=d.getVehicle().getVehicleNo()%>"/>
            <jsp:param name="vType" value="<%=d.getVehicle().getVehicleType()%>"/>
            <jsp:param name="noOfSeats" value="<%=d.getVehicle().getNoOfSeats()%>"/>
            <jsp:param name="vColour" value="<%=d.getVehicle().getVehicleColour()%>"/>
        </jsp:include>
        <form class="flex flex-row">
            <div></div>

        </form>
    </div>

    <%
        }
    %>
    <div class="w-full flex flex-col">
        <div class=" mx-auto text-xl text-gray-500 font-bold my-3">Booking history</div>
        <div class="flex flex-col">
            <%
                Order orders[]= logic.getCustomerOrderHistory(c.getUsername()).toArray(new Order[0]);
                for(int x=0;x< orders.length;x++){
                    Order d= orders[x];
                    System.out.println(d);
            %>

            <jsp:include page="/WEB-INF/partials/bookingRow.jsp">
                <jsp:param name="orderId" value="<%=d.getOrderID()%>"/>
                <jsp:param name="pickup" value="<%=d.getPickupObj().getBranchName()%>"/>
                <jsp:param name="destination" value="<%=d.getDestinationObj().getBranchName()%>"/>
                <jsp:param name="total" value="<%=d.getTotal()%>"/>
                <jsp:param name="driverId" value="<%=d.getDriver().getDriverId()%>"/>
                <jsp:param name="driverFName" value="<%=d.getDriver().getDriverFirstName()%>"/>
                <jsp:param name="driverLName" value="<%=d.getDriver().getDriverLastName()%>"/>
                <jsp:param name="driverNic" value="<%=d.getDriver().getDriverNic()%>"/>
                <jsp:param name="driverMobile" value="<%=d.getDriver().getDriverMobile()%>"/>
                <jsp:param name="branchId" value="<%=d.getDriver().getBranchId()%>"/>
                <jsp:param name="vNo" value="<%=d.getDriver().getVehicle().getVehicleNo()%>"/>
                <jsp:param name="vType" value="<%=d.getDriver().getVehicle().getVehicleType()%>"/>
                <jsp:param name="noOfSeats" value="<%=d.getDriver().getVehicle().getNoOfSeats()%>"/>
                <jsp:param name="vColour" value="<%=d.getDriver().getVehicle().getVehicleColour()%>"/>
            </jsp:include>
            <%}%>
        </div>
    </div>
</div>
</body>
</html>
