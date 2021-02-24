<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	// For page Cashing
	response.setHeader("Cache-Control", "no-cache, no-store , must-revalidate");
	
	// To check if user is logged in or NOT
	if(session.getAttribute("username") == null)
		response.sendRedirect("Login.jsp");
%>
<h3>Welcome ${username} !!</h3>
<form action = "LogoutServlet">
	<input type = "submit" value = "Logout" style = "float: right;">
</form>
</body>
</html>