<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="menu.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>WELCOME|TIMETABLE</title>
</head>
<body>
	<form action="create.jsp" method="post">
	<h2>Welcome to the timetable creator</h2>
	<%try{String usercheck=(String)session.getAttribute("username");
	if(usercheck!=null){%>
		<select name="sem"><%for (int i=1;i<=10;i++){%>
		<option value=<%=i%>><%=i%></option>	
		<%}%>
	</select>
	<div >
			<input class="btn btn-success" type="submit" value="create" />
		</div>
		<%}}catch(Exception e){
		out.print(e);
	}%>

		
</form>
	<span class="1 pull-right">&#169;For JSP--Suresh Prasanna and
		Parthasarthi</span>
</body>
</html>
