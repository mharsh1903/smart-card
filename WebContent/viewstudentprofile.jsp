


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");
if(sds == null){alert("You are using a free package.\n You are not allowed to remove the tag.\n");}
}
</script>


<head>
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
  
    if(document.F1.password.value!=document.F1.repassword.value)
    {
	   alert("Check Confirm PWD"); 
	   document.F1.repassword.value=""
	   document.F1.repassword.focus()	
	   return false
	}
	
	 if(!isNaN(document.F1.disname.value))
   {
       alert("DISTRIBUTER NAME  must  be  char's & can't be null")
	   document.F1.disname.value=""
	   document.F1.disname.focus()
	   return false
   }
   
    if(!isNaN(document.F1.adderess.value))
   {
       alert("adderess field  must  be  char's & can't be null")
	   document.F1.adderess.value=""
	   document.F1.adderess.focus()
	   return false
   }
   if(!isNaN(document.F1.cityname.value))
   {
       alert("cityname field  must  be  char's & can't be null")
	   document.F1.cityname.value=""
	   document.F1.cityname.focus()
	   return false
   }
	
	 if(!isNaN(document.F1.statename.value))
   {
       alert("statename field  must  be  char's & can't be null")
	   document.F1.statename.value=""
	   document.F1.statename.focus()
	   return false
   }
	
	if(!isNaN(document.F1.phone.value))
   {
	   if(document.F1.phone.value >9999999999 )
	   {
		 alert("ye kabhi nhi aayegi")
		 document.F1.phone.value=""
		 document.F1.phone.focus()
         return false   
	   }
   }
   else
   {
       alert("This  field  must  be  number")
	   document.F1.phone.value=""
	   return false
   }
	
	
	  
   
   

   return true   
   }
</SCRIPT>


<div id="header">
	<div id="navigation">
    	<ul>
        	<li><a href="addstudent.jsp">Add Student</a></li>
            <li><a href="addbalance.jsp">Add Balance</a></li>
            <li><a href="viewtudentprofile">View Student Profile </a></li>
            <li><a href="logout.jsp">Logout</a></li>
            
        </ul>	
    </div>
</div>

			  	   
				  <%  out.print("<font color=black>");
	%>
			
				<form name=F1 onSubmit="return dil(this)" action="CreateServlet" >
				  <table cellspacing="5" cellpadding="3">	
				
					<tr><td>STUDENT ID:</td><td> <input type="text" name="studentid"/></td></tr>
					
				
					<tr><td></td><td><input type="submit" value="Show Details"/>
					
					</td></tr>
					</table>
               		</form>
				
    	
    

</body>
</html>
</head>