<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
      a {
        background-color: #1c87c9;
        border: none;
        color: white;
        padding: 20px 34px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 20px;
        margin: 4px 2px;
        cursor: pointer;
      }
    p{
    	color:darkblue;
    	font-size:30px;
    }
    
     
    </style>
</head>
<body>
	
<!--  
<form action="login.jsp" method="post">
<input type="submit" value="Login as a student">
</form>

<form action="signup.jsp" method="post">
<input type="submit" value="Signup as a student">
</form>
<br> <br>
<form action="teacherlogin.jsp" method="post">
<input type="submit" value="Login as a teacher">
</form>

<form action="teachersignup.jsp" method="post">
<input type="submit" value="Signup as a teacher">
</form>
-->
<img src="assets/edu-icon.jpg" height="100" width="100">
<p>Welcome to edu app, your educational partner</p>
<br><br><br><br><br>
<a href="login.jsp" class="button1">Student login</a>
<a href="signup.jsp" class="button2">Student Signup</a>
<br><br>
<a href="teacherlogin.jsp" class="button3">Teacher login</a>
<a href="teachersignup.jsp" class="button4">Teacher Signup</a>

</body>
</html>