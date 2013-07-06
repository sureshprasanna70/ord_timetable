<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 


<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %> 
<%! Connection conn=null; %>
<%! Statement st= null; %>
<%! ResultSet rs= null;%>
<% List<String> code1=new ArrayList();%>
<% 
try {
String connectionURL = "jdbc:mysql://localhost:3306/app"; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
conn = DriverManager.getConnection(connectionURL, "root", "12345");
st=conn.createStatement();
rs=st.executeQuery("select code from timetable");

while(rs.next())
{
	
	code1.add(rs.getString("code"));
}
if(conn.isClosed()) 
   out.println("Unable to connect to database.");
}
catch(Exception e)
{
	out.print(e);
}finally{
conn.close();
}

%>
 
<html>
<link rel="stylesheet" type="text/css" href="css/stylesheet"> 
<head> 
<title>Create Timetable</title> 
</head> 
<body>
    <p><u><b>Create your timetable here</u></b></p>
<table>
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
         
         <td>
	<select name="myComboBox<%=i%><%=j%>">
		<% for(String s:code1){%>
                <option value="<%=s%>"><%=s%></option>
		<%}%>
	</select>
	<%}%> </td></tr><%} %>
</table>
</body> 
</html> 