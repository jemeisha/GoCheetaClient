<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/13/2022
  Time: 8:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="flex flex-col rounded border border-solid p-2 grow-1 h-24 m-2">
  <div class="flex flex-row">
    <div class="flex flex-col mx-10">
      <div class="text-sm text-gray-500">Driver ID</div>
      <div class="text-lg "><%=request.getParameter("driverId")%></div>
    </div>
    <div class="flex flex-col mx-10">
      <div class="text-sm text-gray-500">First Name</div>
      <div class="text-lg "><%=request.getParameter("driverFName")%></div>
    </div>
    <div class="flex flex-col mx-10">
      <div class="text-sm text-gray-500">Last Name</div>
      <div class="text-lg "><%=request.getParameter("driverLName")%></div>
    </div>
    <div class="flex flex-col mx-10">
      <div class="text-sm text-gray-500">Driver NIC</div>
      <div class="text-lg "><%=request.getParameter("driverNic")%></div>
    </div>
    <div class="flex flex-col mx-10">
      <div class="text-sm text-gray-500">Mobile Number</div>
      <div class="text-lg "><%=request.getParameter("driverMobile")%></div>
    </div>
  </div>
  <div class="flex flex-row"></div>
</div>
