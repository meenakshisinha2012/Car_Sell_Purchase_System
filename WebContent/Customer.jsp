<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<title>Cutomer Page</title>
</head>
<body>
<div class="container h-100"> <!-- Place page in centre -->
<form name="seletionForm">
<!-- Selection starts -->
<div class="dropdown">
	<br>
	<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" name ="cartypeDropBtn">
	Car Type
	</button>
	<div class="dropdown-menu" name ="cartypeDropDown">
		<a class="dropdown-item" href="#">Link 1</a>
		<a class="dropdown-item" href="#">Link 2</a>
		<a class="dropdown-item" href="#">Link 3</a>
	</div>
	
	<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" name ="carColorDropBtn">
	Car Color
	</button>
	<div class="dropdown-menu" name ="carColorDropDown">
		<a class="dropdown-item" href="#">Link 1</a>
		<a class="dropdown-item" href="#">Link 2</a>
		<a class="dropdown-item" href="#">Link 3</a>
	</div>
	
	<input class="form-group mx-sm-3 mb-2" type="text" placeholder="Name">
	
	<input class="form-group mx-sm-3 mb-2" type="text" placeholder="Age">
	
	<input class="form-group mx-sm-3 mb-2" type="text" placeholder="Cost">
	
	<button type="submit" class="btn btn-primary mb-2">Search</button>
</div>

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
		    <tr>
		      <td>Sedan</td>
		      <td>BMW</td>
		      <td>Black</td>
		      <td>4</td>
		      <td>8000000</td>
		    </tr>
		    <tr>
		      <td>Suv</td>
		      <td>GLS</td>
		      <td>Black</td>
		      <td>2</td>
		      <td>9000000</td>
		    </tr>
		    <tr>
		      <td>Electric</td>
		      <td>Telsa</td>
		      <td>Red</td>
		      <td>3</td>
		      <td>9000000</td>
		    </tr>
		  </tbody>
		</table>
	</div> <!-- Table div ends -->
		
</div>	<!-- centre div tag -->
</body>
</html>