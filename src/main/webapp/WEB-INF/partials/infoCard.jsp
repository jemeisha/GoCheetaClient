<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/13/2022
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="flex flex-col m-3 rounded-lg bg-yellow-300 p-5">
    <div class="text-center text-2xl font-bold"><%=request.getParameter("title")%></div>
    <div class="text-center text-2xl font-medium"><%=request.getParameter("value")%></div>
</div>
