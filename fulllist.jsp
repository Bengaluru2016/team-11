<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Full List</title>
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
					<table class="table table-hover" id="task-table">
						<thead>
							<tr>
								<th>Floor</th>
								<th>Room #</th>
								<th>Type</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2</td>
								<td>N253</td>
								<td>Colour</td>
								<td>Working</td>
							</tr>
							<tr>
								<td>3</td>
								<td>N331</td>
								<td>Colour</td>
								<td>Working</td>
							</tr>
							<tr>
								<td>3</td>
								<td>N341</td>
								<td>Black & White</td>
								<td>Working</td>
							</tr>
							<tr>
								<td>4</td>
								<td>N436</td>
								<td>Colour</td>
								<td>Working</td>
							</tr>
							<tr>
								<td>5</td>
								<td>N518</td>
								<td>Colour</td>
								<td>Working</td>
							</tr>
							<tr>
								<td>5</td>
								<td>N529</td>
								<td>Black & White</td>
								<td>Working</td>
							</tr>
							<tr>
								<td>5</td>
								<td>N533</td>
								<td>Colour</td>
								<td>Working</td>
							</tr>
                            <tr>
                                <td>5</td>
                                <td>N539</td>
                                <td>Black & White</td>
                                <td>Working</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>N540</td>
                                <td>Black & White</td>
                                <td>Working</td>
                            </tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>
</html>