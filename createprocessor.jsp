<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" type="text/css" href="bootstrap.css">
    
    <%@include file="dataconnector.jsp"%>
    <html>
    <head>
    <title>WARNING!</title>
    <script type="text/javascript">


 
// calculate the seconds (don't change this! unless time progresses at a different speed for you...)
var secs = 20;
function countdown() {
setTimeout('Decrement()',1000);
}
function Decrement() {
if (document.getElementById) {

seconds = document.getElementById("seconds");
// if less than a minute remaining
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
// take mins remaining (as seconds) away from total seconds remaining
return secs;
}
</script>
    </head>
    <body>
    
</body>
    
<%
try
{
String v="one";

if(v.equals(request.getParameter("verifier")))
{
ArrayList<String> sub=new ArrayList<String>();
int i,j;
int count[]=new int[40];
String a[][]=new String[8][20];
String ssem=(String)request.getParameter("token");
out.print(ssem);
Integer sem=Integer.parseInt(ssem);
rs=st.executeQuery("select * from sub_data");
i=0;
for(String entry:sub)
{
	if(entry.equals(rs.getString("code")))
		count[i++]++;
	else if(entry == "xc9202")
		i++;
}
boolean switched=true;
while(rs.next())
	if(count[i]!=Integer.parseInt(rs.getString("credit")))
		switched=false;
if(switched)
{
	for(i=1;i<=5;i++)
	{
		st=conn.createStatement();
		for(j=1;j<=8;j++)
		{
		    a[j-1][10]=request.getParameter("period"+i+""+j+"");
		    sub.add(request.getParameter("period"+i+""+j+""));
		}
		String uquery="update details set subject1='"+a[0][10]+"',subject2='"+a[1][10]+"',subject3='"+a[2][10]+"',subject4='"+a[3][10]+"',subject5='"+a[4][10]+"',subject6='"+a[5][10]+"',subject7='"+a[6][10]+"',subject8='"+a[7][10]+"' where sno='"+i+"' ";
		st.executeUpdate(uquery);
				
	}
	response.sendRedirect("view.jsp");
}
else
{%>
	<div class="alert alert-danger">
	<p>Please choose subjects in accordance with credit</p>
	<div id="timer">
You will be redirected in next <input id="seconds" type="text"> seconds.
</div>
<script>
countdown();
</script>
	</div>
	<%response.setHeader("Refresh", "20;url=index.jsp");
}
}
else
{ %>
<div class="alert alert-danger text-center"><p>You are not authorised to view this page</p>
<div class="form" id="timer">
You will be redirected in next 
<input id="seconds" type="text" size=2 style="width:4%; height=5%;">  seconds.
</div>
</div>
<script>
countdown();
</script>
<%response.setHeader("Refresh", "20;url=index.jsp");}}
catch(Exception e){
out.print(e);
}%>
</html>