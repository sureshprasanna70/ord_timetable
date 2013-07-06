<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="bootstrap.css">

<div class="navbar navbar-static-top">
	<div class="navbar-inner">
		<a class="brand" href="#">Timetable Creator</a>
		<ul class="nav">
			<li><a href="index.jsp">HOME</a></li>
			<li><a href="selectsem.jsp">VIEW</a></li>
			<% String username=(String)session.getAttribute("username");
       if(username==null) {%>
       
			  <li class="pull-right"><a href="login.jsp">LOG-IN</a></li>
			<% } else{%>
			<li><a href="edit.jsp">EDIT</a></li>
			<li><a href="create.jsp">CREATE</a></li>
			<li class="pull-right"><a href="logout.jsp">LOG OUT</a></li>
			<%} %>
		</ul>
	</div>
</div>

