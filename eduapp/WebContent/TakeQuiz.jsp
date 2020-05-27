
<%@ page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<% 
String ans=" ";int count1=0;
if(request.getParameter("correctAns")!=null)
{
ans=request.getParameter("correctAns").toString();
System.out.println("Änswer"+ans);
System.out.println("choice"+request.getParameter("a"));
if(request.getParameter("a").equals(ans))
count1++;
if(session.getAttribute("score")==null)
session.setAttribute("score",0);
else
session.setAttribute("score",((Integer)session.getAttribute("score")).intValue()+count1);
System.out.println(count1);

}

Connection conn = null;

String url="jdbc:mysql://localhost:3306/custrep";
String driver = "com.mysql.jdbc.Driver";
String user ="sumukh";
String pass="ORACLEsumukh123";
PreparedStatement st = null;
ResultSet qrst;
ResultSet rs = null;

String id=request.getParameter("id");
System.out.println("id:"+id);

int i=1;

String s,g;

int count=0;

try {

Class.forName(driver);
conn = DriverManager.getConnection(url,user,pass);
String subject=request.getParameter("subject");
String sql="select * from question_detail where subject=?";
System.out.println("Subject"+subject);

st=conn.prepareStatement(sql);
st.setString(1,subject);
rs=st.executeQuery();


while(rs.next()) {
%>
<br>
<br/>
<center>

<table border="1" width="500px" bgcolor="pink" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">

<form name="form1" action="TakeQuiz.jsp" method="post">

<h2 align="center"><font color="red">Online Quize Application</font></h2>

<input type="text" name="subject" placeholder="Subject"/>

<tr>
<td><%= rs.getString("quest") %></td></tr>

<b>Select Correct Answer</b>
<table border="0" width="500px" height="1000px" cellspacing="2" cellpadding="4">
<tr>

<td width="50%"> Question:</td>
<input type="hidden" name="correctAns" value="<%=rs.getString(9)%>" />
<tr>
<td><%= rs.getString("quest") %></td></tr>
<tr>
<td>

1: <input type="radio" name="a" value= "QA" /></td>
<td><%= rs.getString("QA") %></td></tr> 
<tr>
<td>
2: <input type="radio" name="a" value="QB" /></td>
<td><%= rs.getString("QB") %></td></tr>

<tr>
<td>
3: <input type="radio" name="a" value="QC" /></td>
<td><%= rs.getString("QC") %> </td></tr>

<tr>
<td>
4: <input type="radio" name="a" value="QD" /> </td>
<td> <%= rs.getString("QD") %> </td></tr>

<tr>
<td>
<center>
<input type="submit" value="Submit" name="submit"></center></td></tr>
</table>

</form>
</td>
</tr>
</table>
</center>
</body>
<% g=request.getParameter("a");
	System.out.println("choice"+g+"answer"+ans);
%>
<% 
if(g.equals(ans)){

count++;
System.out.println(count+"Last");
out.println("Correct");

}
else
out.println("false");
%>

<%
}}

catch (Exception ex) {
ex.printStackTrace();

%>

<%
} finally {
if (rs != null) rs.close();
if (st != null) st.close();
if (conn != null) conn.close();
}
out.println("Score="+count);

%>
</html>