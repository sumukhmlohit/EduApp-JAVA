<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>File upload to database</h1><br>
<form method="POST" action="UploadServlet" enctype="multipart/form-data">


 <label>Enter file name: </label><br>
<input type="text" name="name" size="50"/>
<br><br>

<label>Upload your notes: </label><br>
<input type="file" name="photo" size="50000"/>
<br><br>
<label> Subject:</label> 
<input type="text" name="subject" size="50000"/>
<br><br>

<input type="submit" value="Save">

</form>

</body>
</html>