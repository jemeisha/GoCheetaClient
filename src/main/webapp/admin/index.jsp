<%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/12/2022
  Time: 8:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <div class="grow shrink-0">
        <%@ include file="/WEB-INF/partials/adminSidebar.jsp"%>
    </div>
    <div class="grow-0 shrink">body</div>

</div>


</body>
</html>
