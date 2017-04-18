


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
        	<li><a href="officetransaction.jsp">New Transaction</a></li>
        	<li><a href="sprofileoffice.jsp">View Student Profile</a></li>
            <li><a href="viewtransaction.jsp">View Transcation</a></li>
           <li><a href="changepoffice.jsp">Change Password</a></li>
	<li><a href="logout.jsp">Logout</a></li>
        </ul>	
    </div>
</div>


   		   
				  	   
				  <%  out.print("<font color=black>NEW TRANSACTION");
	%>
    
    	
				
	
    
    	<form name=F1 onSubmit="return dil(this)" action="messloginprocess.jsp" >
				   <table cellspacing="10" cellpadding="8">	
			  <%if(request.getAttribute("aa")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("aa")+"");
			
			out.print("</div>"); 
			}
			
			 %>
	
	    			<tr><td>STUDENT ID:</td><td> <input type="text" name="username"/></td></tr>
					
				<!--  	<tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>-->
				<!--  <tr><td>BALANCE:</td><td> <input type="text" name="balance"/></td></tr> -->
				
					
					
					<tr><td></td><td><input type="submit" value="Show Details"/>
					
                   
                   </td></tr>
                   
  </body>
  </html>
</head>