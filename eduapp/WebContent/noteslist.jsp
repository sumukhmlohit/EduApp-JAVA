<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Users Records</title>
</head>
<body>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/custrep"
        user="root" password="ORACLEsumukh123"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM notes;
    </sql:query>
    
    <sql:query var="listUsers1"   dataSource="${myDS}">
        SELECT * FROM tnotes;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of students' notes</h2></caption>
            <tr>
                <th>File Name</th>
                <th>Subject</th>
                <th>Download</th>
                </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                <form action="Download" method="post">
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.subject}" /></td>
                    <input type="hidden" name="downname" value="${ user.name}">
                    <td><input type="submit"></button></td>
                </form>
                </tr>
                
            </c:forEach>
        </table>
         <table border="1" cellpadding="5">
            <caption><h2>List of teachers' notes</h2></caption>
            <tr>
                <th>File Name</th>
                <th>Subject</th>
                <th>Download</th>
                </tr>
            <c:forEach var="user" items="${listUsers1.rows}">
                <tr>
                <form action="TDownload" method="post">
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.subject}" /></td>
                    <input type="hidden" name="downname" value="${ user.name}">
                    <td><input type="submit"></button></td>
                </form>
                </tr>
                
            </c:forEach>
        </table>
    </div>
</body>
</html>