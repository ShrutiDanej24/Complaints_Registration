<%@page import="java.sql.*" %>
<%@page import="com.rcpit.data.*" %>     
    

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Forms :: w3layouts</title>
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
            <!-- /.navbar-header -->
            
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                    	 <li>
                            <a href="index.html"><i class="fa fa-dashboard fa-fw nav_icon"></i>Dashboard</a>
                        </li>	
                         <li>
                            <a href="addcomplain.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>Add Complaints</a>
                        </li>
						<li>
							<a href="viewcomplain.jsp" class="active"><i class="fa fa-home nav_icon"></i>View Complaints</a>
						</li>
						
						
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="graphs">
	     <div class="xs">
  	       <h3>Add Complaints</h3>
  	         <div class="tab-content">
						<div class="tab-pane active" id="horizontal-form">    
  
<form    action="AddComplaints" method="post" >
 		
 		
  <div class="form-group"><label for="exampleInputEmail1">Title</label>
<input type="text" class="form-control" id="exampleInputEmail1"   name="Title"  placeholder="Enter Title">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Description</label>
    <input type="text" class="form-control" id="exampleInputPassword1"  name="Description" placeholder="Description">
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputPassword1">Deadline Date</label>
    <input type="Date" class="form-control" id="exampleInputPassword1" name="Date" placeholder="Date">
  </div>
  
    <div class="form-group">
    <label for="exampleInputPassword1">Image</label>
    <input type="File" class="form-control" id="exampleInputPassword1" name="Image" placeholder="Image">
  </div>
  
  
   Department
 <select name="Department">
<option>Select</option>
<%
try
{
	Connection con=ConnectDB.connect();
 	Statement st=con.createStatement();
 	String query=("select * from  adddept ");
 	ResultSet rs=st.executeQuery(query);
 	while(rs.next())
 	{
 		%>
 		<option ><%=rs.getString(1)%></option>	
 		<% 
 	}
}
catch(Exception e)
{
	System.out.println(e);
}	
%>


</select>
    
<br><br><br><br>
  
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>


						</div>
					</div>
					

				</div>
				<!--//grids-->
				
			</div>
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
