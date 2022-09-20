<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/14/2022
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.jemeisha.Util" %>
<%@ page import="com.jemeisha.proxy.Driver" %>
<%@ page import="com.jemeisha.proxy.LogicService" %>
<%@ page import="com.jemeisha.proxy.Logic" %>
<%@ page import="com.jemeisha.proxy.Customer" %>
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
    <%
      LogicService logicService= new LogicService();
      Logic logic= logicService.getLogicPort();

      Customer customers[]= logic.getAllCustomers().toArray(new Customer[0]);
    %>
    <div class="w-full flex flex-row flex-wrap">
      <jsp:include page="/WEB-INF/partials/infoCard.jsp">
        <jsp:param name="title" value="Total Customers"/>
        <jsp:param name="value" value="<%=customers.length%>"/>
      </jsp:include>

    </div>
    <div class="w-full flex flex-col">
      <%

        for(int x=0;x< customers.length;x++){
          Customer d= customers[x];
      %>

      <jsp:include page="/WEB-INF/partials/customerRow.jsp">
        <jsp:param name="username" value="<%=d.getUsername()%>"/>
        <jsp:param name="customerFName" value="<%=d.getCusFistName()%>"/>
        <jsp:param name="customerLName" value="<%=d.getCusLastName()%>"/>
        <jsp:param name="customerMobile" value="<%=d.getCusMobNo()%>"/>

      </jsp:include>
      <%}%>
    </div>
  </div>

</div>


</body>
</html>