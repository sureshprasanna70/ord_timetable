<html>
<link rel="sty;esheet" ref="bootstrap.css"/>
<body>
<form name="sop" action="view.jsp" method="post">
		<div>
			<b>Select sem</b>
		</div>

		<select name="semester">
			<%
				for(int i=1;i<=10;i++){%>
					<option value="<%=i%>"><%=i%></option>
			<%}%>
		</select>
		<input  type="submit" value="select sem"/>
	</form>
</body>
</html>