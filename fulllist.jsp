<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*,java.io.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Status</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
            	.row{
		    margin-top:40px;
		    padding: 0 10px;
		}
		.clickable{
		    cursor: pointer;   
		}

		.panel-heading div {
			margin-top: -18px;
			font-size: 15px;
		}
		.panel-heading div span{
			margin-left:5px;
		}
		.panel-body{
			display: none;
		}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
     <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<body>
<div class="container">
			<div class="col-lg-4">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Printers</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-search"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="task-table-filter" data-action="filter" data-filters="#task-table" placeholder="Filter Printers" />
					</div>
				
						<%
						PrintWriter write=response.getWriter();
					    String url = "jdbc:mysql://villgrodb.cuvlpmbtfjjv.us-west-2.rds.amazonaws.com:3306/LearningVillgro";
						String user = "villgrolearning";
						String pass = "team112016";
						String query1,query2;
						Statement stmt = null;
						Connection connection = null;
						ResultSet rs = null;
					    try  
						{
					    	Class.forName("com.mysql.jdbc.Driver").newInstance();
							connection = DriverManager.getConnection(url, user, pass);
							if(connection!=null)
							{
									
								stmt = connection.createStatement();
								query1 = "select * from users where designation = 'mentor' or designation = 'staff'";
								rs = stmt.executeQuery(query1);
							
								    out.print("<table class='table table-bordered table-hover'>");
									out.print("<tr class='active'>");
									out.print("<th class='text-center'>Username</th>");
									out.print("<th class='text-center'>Full name </th>");
									out.print("<th class='text-center'> Designation</th>");
									out.print("</tr>"); 
									while(rs.next())
									{
										out.print("<tr>");
										//link = "http://localhost:9090/KSCST_SPP/display.jsp?id="+rs.getString("app_ref");
										//reject = "http://localhost:9090/KSCST_SPP/Reject?id="+rs.getString("app_ref")+"&admin="+username;
										//approve = "http://localhost:9090/KSCST_SPP/Approve?id="+rs.getString("app_ref")+"&admin="+username;
										out.print("<td>" + rs.getString("username") + "</td>");
										//out.print("<td><a href="+link+">" + rs.getString("ptitle") + "</a></td>");
										out.print("<td>" + rs.getString("name") + "</td>");
										out.print("<td>" + rs.getString("designation") + "</td>");
										out.print("</tr>");
									}
							}
						}catch (Exception e)
							{
								out.println(e.getMessage());
							}finally
							{
								try {
									connection.close();
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							}
								
						
						
						%>
						
					
				</div>
			</div>
		</div>
	</div>

</body>
</html>