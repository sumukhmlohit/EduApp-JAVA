<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%! 
int i=1,attempts=0;
String s,g,quest;
int max;
int count=0;
HashMap<String,Integer> hm=new HashMap<String,Integer>();
%>
<% 
String ans=" ";
if(request.getParameter("correctAns")!=null)
{
ans=request.getParameter("correctAns").toString();
}
Connection conn = null;
String url="jdbc:mysql://localhost:3306/custrep";
String driver = "com.mysql.jdbc.Driver";
String user ="sumukh";
String pass="ORACLEsumukh123";
Statement st = null;
ResultSet qrst;
ResultSet rs = null;
ResultSet rs1=null;
System.out.println("Check check");
String id=request.getParameter("id");
System.out.println("id:"+id);

try {

Class.forName(driver);
conn = DriverManager.getConnection(url,user,pass);

st = conn.createStatement();

rs = st.executeQuery("select count(*) as total from question_detail");
while(rs.next())
{
	max=rs.getInt(1);
}

rs = st.executeQuery("select * from question_detail");

while(rs.next()) {
%>
<br>
<br/>
<center>

<table border="1" width="500px" bgcolor="pink" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">

<form name="form1">

<h2 align="center"><font color="red">Online Quize Application</font></h2>

<b>Select Correct Answer</b>rs

<table border="0" width="500px" cellspacing="2" cellpadding="4">
<tr>

<td width="50%"> Question:</td>
<input type="hidden" name="correctAns" value="<%=rs.getString(9)%>" />
<tr>
<td><%= rs.getString("quest") %></td></tr>
<tr>
<td>
<%quest=rs.getString("qcode"); %>
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
%>
<% 
System.out.println(quest+"qcode");
if(hm.containsKey(quest))
{
}
else{
System.out.println(attempts);
if(g.equals(ans)){
if(attempts<max*max){
attempts++;
System.out.println("count"+count+"max"+max+"attempts"+attempts);
out.println("Correct");
count++;
}
}
else{
	attempts++;
out.println("false");
}}
%>

<%
}
rs.close();
st.close();
conn.close();
out.println("Score="+count);;
}

catch (Exception ex) {
ex.printStackTrace();
}
%>


</html>

