


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
		   document.F1.accountno.focus()
		   return false
		}
   }

   if(isNaN(document.F1.accountno.value))
   {
       alert("Accountno must  be  number & can't be null")
	   document.F1.accountno.value=""
	   document.F1.accountno.focus()
	   return false
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
        	<li><a href="addstudent.jsp">Add Student</a></li>
            <li><a href="addbalance.jsp">Add Balance</a></li>
            <li><a href="viewstudentprofile.jsp">View Student Profile </a></li>
            <li><a href="logout.jsp">Logout</a></li>
            
        </ul>	
    </div>
</div>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="mypackage.*" %>
    	
				   <%-- <table >--%>	
	
    	<% 
%>
<table width="300" border="0" cellspacing="10" cellpadding="0" align="center"><%
        
        String username=request.getParameter("username");
		String password=request.getParameter("password");
	    boolean status=MessManagment.check(username,password);
		
		
		
		if(status==true)
			
		{
			//out.print("Welcome    " + username);%>
			<jsp:forward page="addstudent.jsp"></jsp:forward>
			<% 
		    //out.print("<table>");
			//out.println("<br><br><a href='customeradmin.jsp'> Go To customer Administration </a><br>");
			//out.println("<br><a href='ordersadmin.jsp'> Go To Orders Administration </a><br>");
		   // out.print("</table>");
			
			
           			
		}
		else{
			out.print("Please check your username and password");
			request.setAttribute("aa","Please check your Username and Password");
			%>
			<jsp:forward page="bus.jsp"></jsp:forward> 
			<% 
			}
		 
		
		
		
		//}
		//}
			%></table><%
%>
    	
    	
		<%-- </table>--%>



		
   

</body>
</html>
</head>