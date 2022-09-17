<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/14/2022
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="flex flex-col rounded border border-solid p-2 grow-1 m-2">
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

  <div class="flex flex-col rounded border border-solid p-2 grow-1 h-36 m-2">
    <div class="flex flex-row mb-3">
      <div class="flex flex-col mx-10 w-40">
        <div class="text-sm text-gray-500">Driver ID</div>
        <div class="text-lg "><%=request.getParameter("driverId")%></div>
      </div>
      <div class="flex flex-col mx-10 w-40">
        <div class="text-sm text-gray-500">First Name</div>
        <div class="text-lg "><%=request.getParameter("driverFName")%></div>
      </div>
      <div class="flex flex-col mx-10 w-40">
        <div class="text-sm text-gray-500">Last Name</div>
        <div class="text-lg "><%=request.getParameter("driverLName")%></div>
      </div>
      <div class="flex flex-col mx-10 w-40">
        <div class="text-sm text-gray-500">Driver NIC</div>
        <div class="text-lg "><%=request.getParameter("driverNic")%></div>
      </div>
      <div class="flex flex-col mx-10 w-40">
        <div class="text-sm text-gray-500">Mobile Number</div>
        <div class="text-lg "><%=request.getParameter("driverMobile")%></div>
      </div>
      <div class="flex flex-col mx-10 w-40">
        <div class="text-sm text-gray-500">Branch ID</div>
        <div class="text-lg "><%=request.getParameter("branchId")%></div>
      </div>
    </div>
    <div class="flex flex-row">
      <div class="flex flex-col mx-10 w-40">
        <div class="text-sm text-gray-500">Vehicle Number</div>
        <div class="text-lg "><%=request.getParameter("vNo")%></div>
      </div>
      <div class="flex flex-col mx-10 w-40">
        <div class="text-sm text-gray-500">Vehicle Type</div>
        <div class="text-lg "><%=request.getParameter("vType")%></div>
      </div>
      <div class="flex flex-col mx-10 w-40">
        <div class="text-sm text-gray-500">No of seats</div>
        <div class="text-lg "><%=request.getParameter("noOfSeats")%></div>
      </div>
      <div class="flex flex-col mx-10 w-40">
        <div class="text-sm text-gray-500">Colour</div>
        <div class="text-lg "><%=request.getParameter("vColour")%></div>
      </div>
    </div>
  </div>


</div>
