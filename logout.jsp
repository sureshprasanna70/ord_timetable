<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<%@include file="menu.jsp"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LOG-OUT|TIMETABLE</title>
</head>
<body>
<%    if(session != null)  
      {  
    	session.invalidate();
    	response.sendRedirect("login.jsp");
		}   
%>
	
	
</body>
</html>