<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="ie-edge">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<title>Insert title here</title>
<style>
      a {
       color:mediumseagreen; 
        width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
      }
    p{
    	color:darkblue;
    	font-size:30px;
    }
    .subm{
    color:darkgreen;
    }
     
    </style>
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("username")==null&&session.getAttribute("tusername")==null)
		{
			response.sendRedirect("home.jsp");
		}
	%>
	
<p>Welcome ${username}</p> 
<br>
<a href="PDFMerge.jsp" >Merge Notes</a><br><br>
<a href="upload.jsp" class="upl"> Upload notes</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
<a href="noteslist.jsp" class="downl">Download notes</a><br><br>

<form action="TLogout" method="post">
<input type="submit" value="logout" class="subm">
</form>
</body>
</html>