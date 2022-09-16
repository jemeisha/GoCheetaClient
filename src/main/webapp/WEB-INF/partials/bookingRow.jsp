<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/14/2022
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="flex flex-col rounded border border-solid p-2 grow-1 h-20 m-2">
  <div class="flex flex-row mb-3">
    <div class="flex flex-col mx-10 w-40">
      <div class="text-sm text-gray-500">Order ID</div>
      <div class="text-lg "><%=request.getParameter("orderId")%></div>
    </div>
    <div class="flex flex-col mx-10 w-40">
      <div class="text-sm text-gray-500">Pickup</div>
      <div class="text-lg "><%=request.getParameter("pickup")%></div>
    </div>
    <div class="flex flex-col mx-10 w-40">
      <div class="text-sm text-gray-500">Destination</div>
      <div class="text-lg "><%=request.getParameter("destination")%></div>
    </div>
    <div class="flex flex-col mx-10 w-40">
      <div class="text-sm text-gray-500">Total</div>
      <div class="text-lg "><%=request.getParameter("total")%></div>
    </div>
  </div>
  <div class=" mx-auto text-lg text-gray-500 font-bold my-3">Driver & Vehicle infomation</div>

  <jsp:include page="/WEB-INF/partials/driverRow.jsp">
    <jsp:param name="driverId" value="<%=request.getParameter("driverId")%>"/>
    <jsp:param name="driverFName" value="<%=request.getParameter("driverFName")%>"/>
    <jsp:param name="driverLName" value="<%=request.getParameter("driverLName")%>"/>
    <jsp:param name="driverNic" value="<%=request.getParameter("driverNic")%>"/>
    <jsp:param name="driverMobile" value="<%=request.getParameter("driverMobile")%>"/>
    <jsp:param name="branchId" value="<%=request.getParameter("branchId")%>"/>
    <jsp:param name="vNo" value="<%=request.getParameter("vNo")%>"/>
    <jsp:param name="vType" value="<%=request.getParameter("vType")%>"/>
    <jsp:param name="noOfSeats" value="<%=request.getParameter("noOfSeats")%>"/>
    <jsp:param name="vColour" value="<%=request.getParameter("vColour")%>"/>
  </jsp:include>

</div>
