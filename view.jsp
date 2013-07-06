<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html5 PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="menu.jsp"%>
<%@ include file="dataconnector.jsp"%>

<html>
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VIEW|TIMETABLE</title>
</head>
<body>
	
		<%
		String sim=(String)request.getParameter("semester");
		if(sim!=null){
		int csem;
		csem=Integer.parseInt(sim);

		if(csem!=0){
		
		%>
<table class="table table-striped table-bordered">
<tr><th>Period1</th>
<th>Period2</th>
<th>Period3</th>
<th>Period4</th>
<th>Period5</th>
<th>Period6</th>
<th>Period7</th>
<th>Period8</th>
</tr>
<%
try{
rs=st.executeQuery("select * from schedule where sem='"+csem+"'");
while(rs.next())
{%>
<tr><td><%out.print(rs.getString("subject1"));%></td><td><%out.print(rs.getString("subject2"));%></td><td><%out.print(rs.getString("subject3"));%></td><td><%out.print(rs.getString("subject4"));%></td><td><%out.print(rs.getString("subject5"));%></td><td><%out.print(rs.getString("subject6"));%></td><td><%out.print(rs.getString("subject7"));%></td><td><%out.print(rs.getString("subject8"));%></td></tr>
	<%}}catch(Exception e){out.print(e);}%>
	</table>


<input type="button" value="save as pdf" onclick="window.print()">

<%}}else{
response.sendRedirect("selectsem.jsp");}%>	<span class="1 pull-right">&#169;For JSP--(SU)resh prasanna and (P)arathasarathi</span>
</body>
</html>