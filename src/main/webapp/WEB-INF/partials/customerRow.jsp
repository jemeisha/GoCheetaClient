<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/14/2022
  Time: 8:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="flex flex-col rounded border border-solid p-2 grow-1 h-20 m-2">
    <div class="flex flex-row mb-3">
        <div class="flex flex-col mx-10 w-40">
            <div class="text-sm text-gray-500">Username</div>
            <div class="text-lg "><%=request.getParameter("username")%></div>
        </div>
        <div class="flex flex-col mx-10 w-40">
            <div class="text-sm text-gray-500">First Name</div>
            <div class="text-lg "><%=request.getParameter("customerFName")%></div>
        </div>
        <div class="flex flex-col mx-10 w-40">
            <div class="text-sm text-gray-500">Last Name</div>
            <div class="text-lg "><%=request.getParameter("customerLName")%></div>
        </div>
        <div class="flex flex-col mx-10 w-40">
            <div class="text-sm text-gray-500">Mobile Number</div>
            <div class="text-lg "><%=request.getParameter("customerMobile")%></div>
        </div>
    </div>

</div>

