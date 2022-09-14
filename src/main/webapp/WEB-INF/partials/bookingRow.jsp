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

</div>
