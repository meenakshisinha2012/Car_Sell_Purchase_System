<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    
<%@ include file="HeaderLogout.jsp" %>
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
<title>Sell Car</title>
</head>
<body>

<%
	// To check if user is logged in or NOT
	if(session.getAttribute("username") == null)
		response.sendRedirect("Login.jsp");
%>


<% if((request.getAttribute("status") != null) && (request.getAttribute("status").equals("1"))){ %>
	<h3>Thank you, ${username}</h3>
	<div class="alert alert-success">
    	<strong>Success!</strong> DATA SAVED SUCCESSFULLY
  	</div>
<%} 
	else if((request.getAttribute("status") != null) && (request.getAttribute("status").equals("0"))){
%>
	<div class="alert alert-danger">
    	<strong>Unsuccessfull!</strong> DATA NOT SAVED SUCCESSFULLY
  	</div>
<% } 
	else{ 
%>

<div class="container h-100">
	<br>
	<form action = "SellerServlet">
		<label for="car_type">Car Type&nbsp<span style="color: red;">*</span> :</label>
			<select class="form-control" id = "car_type" name = "carType" required >
				<option disabled selected></option>
				<option value = "sports">Sports</option>
				<option value = "sedan">Sedan</option>
				<option value = "hatchBack">Hatch Back</option>
				<option value = "suv">SUV</option>
			</select><br>
	  
	    <label for="owner_name">Owner Name&nbsp<span style="color: red;">*</span> :</label>
	    <input type="text" class="form-control" id="owner_name" name = "ownerName" placeholder="Enter owner name" required><br>

	   <label for="car_name">Car Name&nbsp<span style="color: red;">*</span> :</label>
	    <input type="text" class="form-control" id="car_name"  name = "carName" aria-describedby="carName" placeholder="Enter car name" required><br>



	    <label for="car_age">Age&nbsp<span style="color: red;">*</span> :</label>
	    <input type="text" class="form-control" id="car_age" name = "carAge" placeholder="Enter car age" required><br>

	   <label for="car_cost">Cost&nbsp<span style="color: red;">*</span> :</label>
	    <input type="text" class="form-control" id="car_cost"  name = "carCost" aria-describedby="carCost" placeholder="Enter car cost" required><br>
	  

	    <label for="car_color">Color&nbsp<span style="color: red;">*</span> :</label>
	    <input type="text" class="form-control" id="car_color" name = "color" placeholder="Enter car color" required><br>

	  <div class="form-group form-check">
	    <input type="checkbox" class="form-check-input" name = "negotiable" id="negotiable" value = "Yes" required ><br>
	    <label class="form-check-label" for="negotiable">Negotiable</label>
	  </div>
	  <button type="submit" class="btn btn-primary">Submit</button>
	</form>
<%} %>

</div>
</body>
</html>