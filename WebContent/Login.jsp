<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
	<a class="navbar-brand"><Strong>AppName</Strong></a>
	<form class="form-inline">
		<!-- input class="form-control mr-sm-2" type="search" placeholder="Search"
			aria-label="Search">
		<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>-->
	</form>
	</nav>
	<!--  <div class="container h-100 row align-items-center">
		<div class="container border border-primary">-->


			<div class="container container-table border border-primary">
				<div class="row vertical-center-row">
					<div class="text-center col-md-4 col-md-offset-4 ">
						<form method="post" action="ProcessLoginServlet">
							<div class="form-group">
								<label for="username">Username</label> <input
									class="form-group mx-sm-3 mb-2 type="
									username" class="form-control" id="username"
									aria-describedby="username" name="username"
									placeholder="Enter username">
							</div>
							<div class="form-group">
								<label for="password">Password</label> 
									<input class="form-group mx-sm-3 mb-2" type="password" class="form-control" id="password" name="password" placeholder="Enter password">
							</div>
							<button type="submit" class="btn btn-primary">Login</button>
						</form>
					</div>
				</div>
			</div>


			<!-- <div class="row">
			<div class="col-4 m-5 ">
				<form method= "post" action="ProcessLoginServlet">
					<div class="form-group">
						<label for="username">Username</label> 
						<input class="form-group mx-sm-3 mb-2 type="username" class="form-control" id="username" aria-describedby="username" name="username" placeholder="Enter username"> 
					</div>
					<div class="form-group">
						<label for="password">Password</label> 
						<input class="form-group mx-sm-3 mb-2 type="password" class="form-control" id="password" name="password" placeholder="Enter password">
					</div>
					<button type="submit" class="btn btn-primary">Login</button>
				</form>

			</div>
		</div> -->
		<!--  </div>
	</div>-->
</body>
</html>