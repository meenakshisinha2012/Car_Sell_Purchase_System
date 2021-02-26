
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- BootStrap Table -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- BootStrap Table End -->

<title>Customer Page</title>
</head>
<body>
<%
	//response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); 
	//response.addHeader("Cache-Control", "post-check=0, pre-check=0");
	//response.setHeader("Pragma","no-cache"); 
	//response.setDateHeader ("Expires", 0); 
	// To check if user is logged in or NOT
	if(session.getAttribute("username") == null)
		response.sendRedirect("Login.jsp");
%>

<h3>Welcome ${username} !!</h3>
<form action = "LogoutServlet">
	<input type = "submit" value = "Logout" style = "float: right;">
</form>

<div class="container h-100"> <!-- Place page in centre -->
<form name="seletionForm" action="ProcessFilterServlet">

	<select class="form-group mx-sm-3 mb-2" id = "car_type" name = "carTypeDropDown">
  	<option value=null>Select Type</option>
  	<option value=null>---Select---</option>
  	<c:forEach items="${requestScope.Types}" var="typeitems">
		<option value="${typeitems}">${typeitems} </option>
	</c:forEach>
  </select>

<select class="form-group mx-sm-3 mb-2" id = "car_color" name = "carColorDropDown">
  	<option value=null>Select Color</option>
  	<option value=null>---Select---</option>
  	<c:forEach items="${requestScope.Colors}" var="typeitems">
		<option value="${typeitems}">${typeitems} </option>
	</c:forEach>
</select>
	

	<input class="form-group mx-sm-3 mb-2" type="text" placeholder="Car Name" name="carname">
	
	<input class="form-group mx-sm-3 mb-2" type="text" placeholder="Age" name="age">
	
<select class="form-group mx-sm-3 mb-2" id = "cost_range" name = "CostRangeDropDown">
  	<option value=null>Select Range</option>
  	<option value=null>---Select---</option>
  	<option value="<5"> Less than 5L</option>
  	<option value="5-10"> 5L - 10L</option>
  	<option value=">10"> More than 10L</option>
  	</select>	
  	
  	
	<button type="submit" class="btn btn-primary mb-2">Search</button>
	<input type="submit" class="btn btn-secondary mb-2" name = "clearFilter" value = "Clear Filter">

<br>
</form>

<!--Drop Down ends-->

<!-- Table starts -->

	<div class="table-responsive"> <!-- Table div starts -->
		<table class="table table-hover">
		  <thead>
		    <tr>
		      <th scope="col">Car Type</th>
		      <th scope="col">Model</th>
		      <th scope="col">Color</th>
		      <th scope="col">Age</th>
		      <th scope="col">Cost</th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${requestScope.Cars}" var="items">
		    <tr>
		      <td>${items.getType() }</td>
		      <td>${items.getCar_name() }</td>
		      <td>${items.getColor() }</td>
		      <td>${items.getAge() }</td>
		      <td>${items.getCost() }</td>
		    </tr>
		    </c:forEach>
		  </tbody>
		</table>
	</div> <!-- Table div ends -->
		
</div>	<!-- centre div tag -->

</body>
</html>