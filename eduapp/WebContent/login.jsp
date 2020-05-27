<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.lab{
font-size:20px
}

</style>
</head>
<body>
	<form action="Login" method="post">
		<label class="lab"><b>Student login</b></label><br><br>
		<label for="uname"><b>Username</b></label>
		<input type="text" name="uname" class="suname" placeholder="Enter username:" required><br>
		<label for="psw"><b>Password</b></label>
		<br><input type="password" name="pass" placeholder="Enter password:" class="spass" required><br>
		<br><button type="submit">Login as student</button><br>
	</form>

</body>
</html>
