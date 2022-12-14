<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/14/2022
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.jemeisha.Util" %>
<%@ page import="com.jemeisha.proxy.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    boolean isLoggedIn= Util.isAdminLoggedIn(request);
    if(!isLoggedIn){
        response.sendRedirect("/admin/login");
    }
%>
<html>
<head>
    <title>Title</title>
    <%@include file="/WEB-INF/partials/commonIncludes.jsp"%>
    <link href="/CSS/adminStyles.css" rel="stylesheet" />
</head>
<body>

<%
    LogicService logicService= new LogicService();
    Logic logic= logicService.getLogicPort();

    BookingInfomation bookingInfomation= logic.getBookingInfomation();
%>
<div class="w-full">
    <%@ include file="/WEB-INF/partials/adminHeader.jsp"%>
</div>
<div class="flex flex-row h-full w-full">
    <div class="grow overflow-x-hidden">
        <%@ include file="/WEB-INF/partials/adminSidebar.jsp"%>
    </div>
    <div class="grow-0 shrink flex flex-col">
        <div class="w-full flex flex-row flex-wrap">
            <jsp:include page="/WEB-INF/partials/infoCard.jsp">
                <jsp:param name="title" value="Total Bookings"/>
                <jsp:param name="value" value="<%=bookingInfomation.getTotalBookings()%>"/>
            </jsp:include>

            <jsp:include page="/WEB-INF/partials/infoCard.jsp">
                <jsp:param name="title" value="Ongoing Bookings"/>
                <jsp:param name="value" value="<%=bookingInfomation.getOngoingBookings()%>"/>
            </jsp:include>

        </div>
        <div class="w-full flex flex-col">
            <%
//                LogicService logicService= new LogicService();
//                Logic logic= logicService.getLogicPort();

                Order orders[]= logic.getAllOrders().toArray(new Order[0]);
                for(int x=0;x< orders.length;x++){
                    Order d= orders[x];
            %>

            <jsp:include page="/WEB-INF/partials/bookingRow.jsp">
                <jsp:param name="orderId" value="<%=d.getOrderID()%>"/>
                <jsp:param name="pickup" value="<%=d.getPickup()%>"/>
                <jsp:param name="destination" value="<%=d.getDestination()%>"/>
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
