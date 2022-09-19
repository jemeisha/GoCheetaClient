<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/13/2022
  Time: 8:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.jemeisha.Util" %>
<%@ page import="com.jemeisha.proxy.Driver" %>
<%@ page import="com.jemeisha.proxy.LogicService" %>
<%@ page import="com.jemeisha.proxy.Logic" %>
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
<div class=" w-full">
    <%@ include file="/WEB-INF/partials/adminHeader.jsp"%>
</div>
<div class="flex flex-row h-full">
    <div class="grow-0 shrink overflow-x-hidden">
        <%@ include file="/WEB-INF/partials/adminSidebar.jsp"%>
    </div>
    <div class="grow shrink-0 flex flex-col">
        <div class="w-full flex flex-row flex-wrap">
            <jsp:include page="/WEB-INF/partials/infoCard.jsp">
                <jsp:param name="title" value="Total Drivers"/>
                <jsp:param name="value" value="5"/>
            </jsp:include>

            <jsp:include page="/WEB-INF/partials/infoCard.jsp">
                <jsp:param name="title" value="Total Vehicles"/>
                <jsp:param name="value" value="5"/>
            </jsp:include>

            <jsp:include page="/WEB-INF/partials/infoCard.jsp">
                <jsp:param name="title" value="Available Drivers"/>
                <jsp:param name="value" value="5"/>
            </jsp:include>
        </div>
        <div class="w-full flex flex-row">
            <a href="/admin/drivers/add-driver" class=" w-60 ml-3 btn btn-outline-success btn-rounded btn-block waves-effect z-depth-0"
               type="submit" name="btnLogin" >Add a new Driver</a>
        </div>
        <div class="w-full flex flex-col">
            <%
                LogicService logicService= new LogicService();
                Logic logic= logicService.getLogicPort();

                Driver drivers[]= logic.getAllDriversWithVehicles().toArray(new Driver[0]);
                for(int x=0;x< drivers.length;x++){
                    Driver d= drivers[x];
            %>
<%--            <%=d.getDriverId()%>--%>
            <jsp:include page="/WEB-INF/partials/driverRow.jsp">
                <jsp:param name="editable" value="true"/>
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
            <%}%>
        </div>
    </div>

</div>


</body>
</html>
