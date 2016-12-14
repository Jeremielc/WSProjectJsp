<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="fr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible"
	content="text/html; charset=UTF-8; IE=edge">
<meta name="description" content="">
<meta name="author" content="Hue_Leclerc">

<title>Web Project</title>

<!-- Bootstrap core CSS -->
<link href="js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
</head>
<body>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">Web Project</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.html">Home</a></li>
		</div>
	</div>
	</nav>
	<div class="jumbotron">
		<!--div behind navigation bar -->
	</div>

	<div class="container theme-showcase" role="main">
		<form action="jsp/search_input.jsp" method="get">

			<div class="form-group">
				<table style="margin-left: auto; margin-right: auto">
					<tr>
						<p class="text-center h4">Search a customer</p>
					</tr>
					<tr>
						<th><label for="name" style="padding: 15px;">Surname*</label></th>
						<td><input type="text" class="form-control input-sm"
							name="name" placeholder="Nom" required="true">
							<% %>
						</td>
						<th><label for="firstname" style="padding: 15px;">Firstname</label>
						</th>
						<td><input type="text" class="form-control input-sm"
							name="firstname" placeholder="Prenom" required="false">
							<% %>
						</td>
						<td>
							<button type="submit" class="btn btn-primary"
								style="margin-left: 10px;">Search</button>
						</td>
						<td>
							<button class="btn btn-primary" type="reset"
								style="margin-left: 10px;">Reset</button>
						</td>
					</tr>
				</table>
		</form>
	</div>
	<form action="jsp/search_cmb.jsp" method="get">
		<div class="col-md-4 col-md-offset-4 text-center">
			<select class="input-large form-control">
				<optgroup label="Customer">
					<option value="">Choose among a customer</option>
					<% for{ %>
						<option value="<%= c.getId() %>">
							<%= c.getSurname()+""+c.getName() %>
						</option>
					<% } %>
					<!-- Add jsp traitement -->
				</optgroup>
			</select>
		</div>
	</form>
	<form action="jsp/search_tab.jsp" method="get">
	<div class="col-md-10 col-md-offset-1 text-center">
		<table class="table table-striped"
			style="margin-top: 30px; padding: 20px;">
			<thead>
				<tr>
					<th>Operation ID</th>
					<th>Account Number</th>
					<th>Card Number</th>
					<th>Type</th>
					<th>Date</th>
					<th>Amount</th>
				</tr>
			</thead>
			<tbody>
			<% %>
				<!-- Add jsp traitement -->
			</tbody>
		</table>
	</div>
	</form>
</body>
<footer> <script src="./jquery.min.js"></script> <script
	src="./js/bootstrap/js/bootstrap.min.js"></script> </footer>
</html>