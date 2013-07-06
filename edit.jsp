<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="menu.jsp"%>
<%@include file="dataconnector.jsp"%>
<!DOCYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
	<link rel="stylesheet" type="text/css" href="bootstrap.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EDIT|TIMETABLE</title>
</head>
<body>
	<div>
		<select name="sem">
		<%try{for(int i=1;i<=10;i++){%>
			<option value="<%=i%>"><%=i%></option>
			<%}}catch(Exception e){
			out.print(e);
		} %>
		</select>
	</div>
	
</body>
</html>
