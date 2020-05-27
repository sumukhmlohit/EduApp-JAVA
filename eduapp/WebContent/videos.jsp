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
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//to prevent caching for http 1.1
response.setHeader("Pragma","no-cache");//for older versions
response.setHeader("Expires","0");// for proxy servers
if(session.getAttribute("username")==null&&session.getAttribute("tusername")==null)
{
response.sendRedirect("login.jsp");
}
%>
<iframe width="727" height="409" src="https://www.youtube.com/embed/xqa9TXlAdiM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</body>
</html>