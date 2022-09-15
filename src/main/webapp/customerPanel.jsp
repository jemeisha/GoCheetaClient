<%@ page import="com.jemeisha.proxy.LogicService" %>
<%@ page import="com.jemeisha.proxy.Logic" %><%--
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
</head>
<body class="w-full">
<div class="w-full flex flex-col">
    <%
      LogicService logicService=new LogicService();
      Logic logic= logicService.getLogicPort();
      boolean isOngoingOrder=false;

      if(isOngoingOrder){
    %>
      <div class="flex flex-row m-2 rounded border border-solid ">

        <form class="flex flex-row">



        </form>
      </div>

      <%
      }
    %>
  <div></div>
</div>
</body>
</html>
