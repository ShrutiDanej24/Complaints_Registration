<%@page import="java.sql.*" %>
<%@page import="com.rcpit.data.*" %> 
<%@page import="com.rcpit.controllers.*" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Basic_tables :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Smart Maintainance Portal</a>
            </div>
           <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                         <li>
                            <a href="index.html"><i class="fa fa-dashboard fa-fw nav_icon"></i>Dashboard</a>
                        </li>
						<li>
							<a href="viewowndeptcomplain.jsp" class="active"><i class="fa fa-home nav_icon"></i>View Own Department Complaints</a>
						</li>
						<li>
							<a href="viewdeadlinetask.jsp" class="active"><i class="fa fa-home nav_icon"></i>View Deadline Task</a>
						</li>
							<li>
							<a href="viewpendingtask.jsp" class="active"><i class="fa fa-home nav_icon"></i>View Pending Task</a>
						</li>
							<li>
							<a href="viewcompletedtask.jsp" class="active"><i class="fa fa-home nav_icon"></i>View Completed Task</a>
						</li>	
                         </li>
							<li>
							<a href="allroadmaintainance.jsp" class="active"><i class="fa fa-home nav_icon"></i>Road Maintainance</a>
						</li>	   
                    </ul>
                </div>
            
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
  	<%
	//int id = Integer.parseInt(request.getParameter("id"));
         String id = request.getParameter("id");
	try
	{
		Connection con=ConnectDB.connect();
		PreparedStatement ps=con.prepareStatement("update road set status=? where rname=?");
		
		ps.setString(1,"approve");
		//ps.setInt(2,id);
		ps.setString(2,id);
		int rs = ps.executeUpdate();
		
		if(rs > 0)
		{
			response.sendRedirect("allroadmaintainance.jsp");
		}
		else
		{
			response.sendRedirect("404error.html");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

%>

  	
   </div>
   
   </div>
      </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
