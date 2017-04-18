


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");
if(sds == null){alert("You are using a free package.\n You are not allowed to remove the tag.\n");}
}
</script>

<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.username.focus()
		   return false
		}
   }

  
   if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }

   if(!isNaN(document.F1.password.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }
   
   return true   
}
</SCRIPT>

<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>
<body>
<div id="header">
	<div id="navigation">
    	<ul>
        	<li><a href="libtransaction.jsp">New Transaction</a></li>
           
           <li><a href="changepassword.jsp">Change Password</a></li>
	<li><a href="logout.jsp">Logout</a></li>
        </ul>	
    </div>
</div>


   		   String Id=request.getParameter("username"); 
   		   
				  	   
				  <%  out.print("<font color=black>NEW TRANSACTION\n");
				  
	%>
    
    	
				<form name=F1 onSubmit="return dil(this)" action="libtransaction2.jsp" >
				  <table cellspacing="5" cellpadding="3">	
	<tr><td>Rs:</td><td> <input type="text" name="rs"/></td></tr>
		<tr><td></td><td><input type="submit" value="PAY"/>
					
					<INPUT TYPE=RESET VALUE="CANCEL"></td></tr>
					</table>
               		</form>

                   
  </body>
  </html>
</head>