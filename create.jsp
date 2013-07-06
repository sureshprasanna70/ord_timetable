<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<head>


<title>CREATE|TIMETABLE</title>
</head>

<body>

	<form name="time" method="post" action="createprocessor.jsp">
		<br />


		<%@ include file="dataconnector.jsp"%>
		<% 
		try
		{
		String ssem=(String)request.getParameter("sem");
		int isem=Integer.parseInt(ssem);
		
        username=(String)session.getAttribute("username");
       
       if(username==null) {%>
		<div class="alert alert-error">
			Please login to view the contents of the page <a href="login.jsp">Login</a>
		</div>
		<% }
else
{ 	ArrayList<String> code1=new ArrayList<String>();
	
	rs=st.executeQuery("select code from sub_data where sem='"+isem+"'");
	
	while(rs.next()){
	    code1.add(rs.getString("code"));
	}
       %>
		<div class="alert alert-success">
			Welcome <span><%=username %></span>
		</div>
		<table class="table table-striped table-bordered">
			<tr>
				<th>Period1</th>
				<th>Period 2</th>
				<th>Period 3</th>
				<th>Period 4</th>
				<th>Period 5</th>
				<th>Period 6</th>
				<th>Period 7</th>
				<th>Period 8</th>
			</tr>
			<% for(int i=1;i<=5;i++){%>
			<tr>
				<%for(int j=1;j<=8;j++){
	 %>

				<td><select name="period<%=i%><%=j%>">
						<% for(String s:code1){%>
						<option value="<%=s%>"><%=s%></option>
						<%}%>
				</select> <%}%></td>
			</tr>
			<%}%>



		</table>
		<div class="form-actions">
			<input class="btn btn-success" type="submit" value="create" /> <input
				class="btn btn-danger" type="reset" value="reset" />
				<input type="hidden" value="one" name="verifier"/>
				<input type="hidden" value="<%=isem%>" name="token"/>
		</div>
	</form>
	<%} }catch(Exception e){
			out.println(e);
}%>
	<span class="1 pull-right">&#169;For JSP--Suresh Prasanna and
		Parthasarthi</span>
</body>
</html>



