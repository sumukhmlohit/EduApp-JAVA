<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
		}
%>

<form action="Deactivate" method="post">
		<p>Enter your username and password to confirm deactivation</p>
		Enter username:<input type="text" name="uname"><br>
		Enter password:<input type="password" name="pass"><br>
		<input type="submit" value="Deactivate"><br>
</form>

</body>
</html>