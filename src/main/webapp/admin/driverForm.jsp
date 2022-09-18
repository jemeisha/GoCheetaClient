<%@ page import="com.jemeisha.proxy.Branch" %>
<%@ page import="com.jemeisha.proxy.LogicService" %>
<%@ page import="com.jemeisha.proxy.Logic" %>
<%@ page import="com.jemeisha.proxy.Category" %><%--
  Created by IntelliJ IDEA.
  User: jEMEISHA
  Date: 9/18/2022
  Time: 6:41 PM
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
    <%
        LogicService service = new LogicService();
        Logic logic = service.getLogicPort();
    %>
    <div class="grow-0 shrink overflow-x-hidden">
        <%@ include file="/WEB-INF/partials/adminSidebar.jsp"%>
    </div>
    <div class="grow shrink-0 flex flex-col">
        <div class="my-10 text-2xl text-left">Add Driver</div>
        <div class="col-md-7 padding70 bg-yellow">

            <form class="text-center" style="color: #757575;" action="/admin/drivers/add-driver" method="post" >
                <center>
                    <br>

                </center>
                <div class="form-row">
                    <div class="col">
                        <!-- First name -->
                        <div class="md-form">
                            <input type="text"  class="form-control" placeholder="Enter First Name"  name="fname" required/>

                        </div><br>
                    </div><br>
                    <div class="col">
                        <!-- Last name -->
                        <div >
                            <input type="text"  class="form-control" placeholder="Enter Last name"  name="lname" required/>

                        </div><br>
                    </div><br>
                </div>
                <br>

                <!-- E-mail -->
                <div >
                    <input type="text"  class="form-control" placeholder="NIC"  name="nic"  required/>

                </div><br>

                <!-- Password -->
                <div class="mb-4">

                    <input type="text" class="form-control" placeholder="Mobile No" name="mobno" maxlength="10" required />

                </div>

                <div >

                    <input type="password" class="form-control" placeholder="Enter the password" name="pass" required />

                </div>

                <br>

                <div>

                </div>

                <div class="flex flex-col mb-4">
                    <div class="text-[rgb(73,80,87)] text-left mb-1">Branch</div>
                    <%
                        Branch[] branches=logic.getAllBranches().toArray(new Branch[0]);

                    %>

                    <select name="branch" class="border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" name="cars" id="cars">
                        <%
                            for(int x=0;x< branches.length;x++){
                                Branch b=branches[x];

                        %>
                        <option value="<%=b.getBranchId()%>"><%=b.getBranchName()%></option>
                        <%
                            }
                        %>
                    </select>

                </div>

                <div >
                    <input type="text" class="form-control" placeholder="Enter the Vehicle Number"  name="vno" required/>

                </div>
                <div class="flex flex-col mb-4">
                    <div class="text-[rgb(73,80,87)] text-left mb-1">Vehicle Category</div>
                    <%
                        Category[] categories=logic.getAllVehicleCategories().toArray(new Category[0]);

                    %>

                    <select name="vCat" class="border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" name="cars" id="cars">
                        <%
                            for(int x=0;x< categories.length;x++){
                                Category b=categories[x];

                        %>
                        <option value="<%=b.getCategoryId()%>"><%=b.getName()%></option>
                        <%
                            }
                        %>
                    </select>

                </div>
                <div class="mb-4">
                    <input type="text" class="form-control" placeholder="Enter no of seats"  name="noseats" required/>

                </div>

                <div >
                    <input type="text" class="form-control" placeholder="Enter vehicle colour"  name="colour" required/>

                </div>
                <!-- Sign up button -->
                <input class="btn btn-outline-success btn-rounded btn-block my-4 waves-effect z-depth-0"
                       type="submit" name="submit" value="ADD DRIVER">

                <hr>
            </form>
        </div>
    </div>

</div>


</body>
</html>

