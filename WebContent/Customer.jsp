
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div class="container h-100"> <!-- Place page in centre -->
<form name="seletionForm">

	<select class="form-group mx-sm-3 mb-2" id = "car_type" name = "carTypeDropDown">
  	<option>Default select</option>
  	<c:forEach items="${requestScope.Types}" var="typeitems">
		<option value="${typeitems}">${typeitems} </option>
	</c:forEach>
  </select>

<select class="form-group mx-sm-3 mb-2" id = "car_color" name = "carColorDropDown">
  	<option>Default select</option>
  	<c:forEach items="${requestScope.Colors}" var="typeitems">
		<option value="${typeitems}">${typeitems} </option>
	</c:forEach>
</select>
	

	<input class="form-group mx-sm-3 mb-2" type="text" placeholder="Name">
	
	<input class="form-group mx-sm-3 mb-2" type="text" placeholder="Age">
	
	<input class="form-group mx-sm-3 mb-2" type="text" placeholder="Cost">
	
	<button type="submit" class="btn btn-primary mb-2">Search</button>



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