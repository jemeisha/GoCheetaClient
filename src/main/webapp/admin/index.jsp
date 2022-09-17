<%@ page import="com.jemeisha.Util" %>
<%@ page import="com.jemeisha.proxy.LogicService" %>
<%@ page import="com.jemeisha.proxy.Logic" %>
<%@ page import="com.jemeisha.proxy.SalesInfo" %><%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/12/2022
  Time: 8:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    boolean isLoggedIn = Util.isAdminLoggedIn(request);
    if (!isLoggedIn) {
        response.sendRedirect("/admin/login");
    }
%>
<html>
<head>
    <title>Title</title>
    <%@include file="/WEB-INF/partials/commonIncludes.jsp" %>
    <link href="/CSS/adminStyles.css" rel="stylesheet"/>
</head>
<body>
<div class=" w-full">
    <%@ include file="/WEB-INF/partials/adminHeader.jsp" %>
</div>
<div class="flex flex-row h-full w-full">
    <div class="grow-0">
        <%@ include file="/WEB-INF/partials/adminSidebar.jsp" %>
    </div>
    <div class="flex flex-col">
            <%
                LogicService logicService = new LogicService();
                Logic logic = logicService.getLogicPort();

                double totalSales = logic.getTotalSalesInfo();
                SalesInfo[] salesInfos = logic.getTotalSalesByBranch().toArray(new SalesInfo[0]);
            %>
            <div class="w-full flex flex-row flex-wrap">
                <jsp:include page="/WEB-INF/partials/infoCard.jsp">
                    <jsp:param name="title" value="Total Sales"/>
                    <jsp:param name="value" value="<%=totalSales%>"/>
                </jsp:include>
            </div>
            <div class="w-full flex flex-row flex-wrap">
                <%
                    for(int x=0;x<salesInfos.length;x++){
                        SalesInfo si = salesInfos[x];
                        String bName = "Total Branch Sales("+si.getBranchName()+")";
                %>
                    <jsp:include page="/WEB-INF/partials/infoCard.jsp">
                        <jsp:param name="title" value="<%=bName%>"/>
                        <jsp:param name="value" value="<%=si.getSales()%>"/>
                    </jsp:include>
                <%}%>
            </div>
    </div>
</div>

</div>


</body>
</html>
