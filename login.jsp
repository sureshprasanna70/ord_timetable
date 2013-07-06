
<%@ page language="java"%>
<%@include file="menu.jsp"%>
<!DOCTYPE html5 PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" type="text/css" href="bootstrap.css">
<script src="bootstrap-modal.js" type="text/javascript">
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login|Timetable</title>

<script>
               <%@include file="bootstrap-modal.js"%>
                function trim(s)   
                {  
                    return s.replace( /^\s*/, "" ).replace( /\s*$/, "" );  
                }  
                function validateForm()
                {
      
                var x=document.forms["form"]["sUserName"].value;
                var y=document.forms["form"]["sPwd"].value;
                     
                if (x==null || x=="")
                	{
                	$('#u').modal('show');
                	return false;
                	}
                if (y==null || y=="")
                {
                	$('#p').modal('show');
                return false;
                }
                }
            </script>

</head>
<body>

	<form name="form" method="post" action="loginprocessor.jsp" onsubmit="return validateForm()">
		<div class="control-group">
			<label class="control-label" for="sUserName">Username</label>
			<div class="controls">
				<input type="text" id="sUserName" name="sUserName"
					placeholder="Username">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="sPwd">Password</label>
			<div class="controls">
				<input type="password" id="sPwd" name="sPwd" placeholder="******">
				
			</div>
		</div>
		<div class="form-actions">

			<input type="submit" class="btn btn-success" value="Log in">
			<input type="reset" class="btn btn-danger" value="Reset">
			<input type="hidden" name="lverifier" value="success">
			 <span class="1 pull-right">&#169;For JSP--Suresh Prasanna and Parthasarthi</span>
		</div>
		 
     
    	 <div id="u" class="modal hide fade in" style="display: none; ">  
    <div class="modal-header"><h3>OOPS!!</h3></div>  
    <div class="modal-body">YOUR USERNAME,PLEASE</div>  
    <div class="modal-footer"> 
    <a href="#" class="btn" data-dismiss="modal">Close</a>  
    </div>  
    </div> 
    <div id="p" class="modal hide fade in" style="display: none; ">
    <div class="modal-header"><h3>OOPS!!</h3></div>  
    <div class="modal-body">YOUR PASSWORD,PLEASE</div>  
    <div class="modal-footer">  
     <a href="#" class="btn " data-dismiss="modal">Close</a>  
    </div>  
    </div> 
    
     
    <script src="jquery.js"></script>  
    <script src="bootstrap-modal.js"></script>
	</form>

</body>
</html>
