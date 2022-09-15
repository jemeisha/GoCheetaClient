<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/15/2022
  Time: 6:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<div class=" w-full">
    <%@ include file="/WEB-INF/partials/adminHeader.jsp"%>
</div>
<div class="flex flex-row h-full">
    <div class="grow-0 shrink overflow-x-hidden">
        <%@ include file="/WEB-INF/partials/adminSidebar.jsp"%>
    </div>
    <%
        LogicService logicService= new LogicService();
        Logic logic= logicService.getLogicPort();

        Branch branches[]= logic.getAllBranches().toArray(new Branch[0]);
    %>
    <div class="grow shrink-0 flex flex-col">
        <div class="w-full flex flex-row flex-wrap">
            <jsp:include page="/WEB-INF/partials/infoCard.jsp">
                <jsp:param name="title" value="Total Branches"/>
                <jsp:param name="value" value="<%=branches.length%>"/>
            </jsp:include>

        </div>
        <div class="w-full flex flex-col">
            <%

                for(int x=0;x< branches.length;x++){
                    Branch d= branches[x];
            %>

            <jsp:include page="/WEB-INF/partials/branchRow.jsp">
                <jsp:param name="branchId" value="<%=d.getBranchId()%>"/>
                <jsp:param name="branchName" value="<%=d.getBranchName()%>"/>
                <jsp:param name="phoneNo" value="<%=d.getPhoneNo()%>"/>

            </jsp:include>
            <%}%>
        </div>
    </div>

</div>


</body>
</html>