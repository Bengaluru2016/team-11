<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*,java.io.*"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Users List</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
   

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">WELCOME!</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="index.jsp"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="charts.jsp"><i class="fa fa-fw fa-edit"></i> Blog</a>
                    </li>
                    <li>
                        <a href="leaderboard.jsp"><i class="fa fa-fw fa-table"></i> LeaderBoard</a>
                    </li>
                    <li>
                        <a href="contributions.jsp"><i class="fa fa-fw fa-edit"></i> Contribute</a>
                    </li>
            
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-file"></i> Courses <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="#">Mandatory Courses</a>
                            </li>
                            <li>
                                <a href="#">Optional Courses</a>
                            </li>
                        </ul>
                    </li>
                      </li>
                    <li>
                        <a href="feedback.jsp"><i class="fa fa-fw fa-envelope"></i> Feedback</a>
                    </li>
                 
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                        Users 
                           </h1>
                       <!-- <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-file"></i> Blank Page
                            </li>
                        </ol> --><div class="container">
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
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>