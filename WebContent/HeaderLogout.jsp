
<link rel="stylesheet" href="HomeCss.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<div class="header">
	  <h1>CarBechoo.com</h1>
	  <p> <b>Get & Sell </b> car at your Price.</p>
	</div>
	 <%
		if(session.getAttribute("username") == null)
			response.sendRedirect("Login.jsp");	
	%>
	 
	 <div class="navbar">
	 	<h4 style="color:white; ">Welcome ${username}</h4>
	 	<a href="LogoutServlet"><i class="fa fa-fw fa-power-off"></i> Logout</a> 
		
	</div>
	
