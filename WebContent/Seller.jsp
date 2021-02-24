<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div class="container h-100">
	<br>
	<form action = "CarSell">
		<label for="car_type">Car Type :</label>
			<select class="form-control" id = "car_type" name = "carType">
				<option>Default select</option>
				<option value = "sports">Sports</option>
				<option value = "sedan">Sedan</option>
				<option value = "hatchBack">Hatch Back</option>
				<option value = "suv">SUV</option>
			</select><br>
	  
	    <label for="owner_name">Owner Name :</label>
	    <input type="text" class="form-control" id="owner_name" name = "ownerName" placeholder="Enter owner name"><br>

	   <label for="car_name">Car Name :</label>
	    <input type="text" class="form-control" id="car_name"  name = "carName" aria-describedby="carName" placeholder="Enter car name"><br>


	    <label for="car_age">Age :</label>
	    <input type="text" class="form-control" id="car_age" name = "carAge" placeholder="Enter car age"><br>

	   <label for="car_cost">Cost :</label>
	    <input type="text" class="form-control" id="car_cost"  name = "carCost" aria-describedby="carCost" placeholder="Enter car cost"><br>
	  

	    <label for="car_color">Color :</label>
	    <input type="text" class="form-control" id="car_color" name = "color" placeholder="Enter car color"><br>

	  <div class="form-group form-check">
	    <input type="checkbox" class="form-check-input" name = "negotiable" id="negotiable" value = "Yes" ><br>
	    <label class="form-check-label" for="negotiable">Negotiable</label>
	  </div>
	  <button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>
</body>
</html>