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

<form action="ChangePassword" method="post">
		<p>Enter your username and password to confirm deactivation</p>
		Enter username:<input type="text" name="uname"><br>
		Enter old password:<input type="password" name="pass"><br>
		Enter new password:<input type="password" name="newpass"><br>
		<input type="submit" value="Change your password"><br>
</form>

</body>
</html>