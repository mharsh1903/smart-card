<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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


<%@ page import="java.util.Arrays" %>
<%@ page import="mypackage.*" %>
<%@ page import="java.util.Arrays" %>
<% 

String name=request.getParameter("name");
String desig=request.getParameter("desig");

String id=new String();
String pwd=new String();

String p[]=new String[]{id,pwd} ;

p=admin.addBus(name,desig);

out.print("REGISTERED SUCCESSFULLY\n");
out.print("User ID and Password is\n");
out.print(Arrays.toString(p));
%>
</body>
</html>
