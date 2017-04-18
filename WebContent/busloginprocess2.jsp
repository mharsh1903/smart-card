<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<body>
<div id="header">
	<div id="navigation">
    	<ul>
        	<li><a href="messtransaction.jsp">New Transaction</a></li>
            <li><a href="viewtransaction.jsp">View Transcation</a></li>
           <li><a href="changepassword.jsp">Change Password</a></li>
	<li><a href="logout.jsp">Logout</a></li>
        </ul>	
    </div>
</div>
<%%>




<% 
String Id=MessManagment.getID(); 

String rs=request.getParameter("rs");
int bal=BusManagment.retBal("Id");
int rbal=BusManagment.deductBal (Id , bal);
System.out.println(rbal);

if(rbal==-1)
{
	out.println("TRANSACTION FAIL\n");
}
else
{
	out.println("TRANSACTION SUCCESSFUL\n");
	
	out.println("Remaining Balance=" +rbal);
}
//out.println("Current Balance=" + bal);





%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="mypackage.*" %>

</body>
</head>
</html>
