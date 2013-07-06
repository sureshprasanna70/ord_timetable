<%@ include file="dataconnector.jsp"%>
<%! Statement st1 = null;%>

<html>
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<head>
<title>WARNING!</title>
<script type="text/javascript">
var secs = 20;
function countdown() {
setTimeout('Decrement()',1000);
}
function Decrement() {
if (document.getElementById) {

seconds = document.getElementById("seconds");

if (seconds < 59) {
seconds.value = secs;
} else {

seconds.value = getseconds();
}
secs--;
setTimeout('Decrement()',1000);
}
}

function getseconds() {

return secs;
}
</script></head><body>

<%
ArrayList<String> err=new ArrayList<String>();
String l="success";
if(l.equals(request.getParameter("lverifier")))
{
	try {
		
		String vuser = null;
		String vpass = null;
		String uuser = request.getParameter("sUserName");
		String upass = request.getParameter("sPwd");
		if (conn.isClosed())
		  response.sendRedirect("error.jsp");
			
		else{
		st1 = conn.createStatement();
		String sql = "select * from incharge where name='"+uuser+"'";
		rs = st1.executeQuery(sql);
		while (rs.next()) {
			vuser = rs.getString("name");
			vpass = rs.getString("key");
			
		}
			if (vuser.equals(uuser) && vpass.equals(upass)) {

			
			session.setAttribute("username", uuser);
			response.sendRedirect("index.jsp");
			
		}
			else
			{
				response.sendRedirect("login.jsp");
			
			}
	

			}} 
			catch (Exception e) {err.add(e.toString());
			}
	
}
else
{%>
	<div class="alert alert-danger text-center"><p>You are not authorised to view this page</p>
<div id="timer">
You will be redirected in next 
<input id="seconds" type="text" size=2 style="width:4%; height=5%;">  seconds.
</div>
</div>
		<script>
	countdown();
	</script>
	

	<%response.setHeader("Refresh", "20;url=index.jsp");}%>
</body>
</html>
