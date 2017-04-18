







<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="mypackage.*" %>
 
             	<%--</table>--%>
				
  		<%
  		String name=request.getParameter("username");
  		BusManagment.setID(name);
  		int bal=BusManagment.retBal(name);
  		out.println("Current Balance : " + bal);
 %>
							
				<form name=F1 onSubmit="return dil(this)" action="busloginprocess1.jsp" >
				  <table cellspacing="5" cellpadding="3">	
	<tr><td>Rs:</td><td> <input type="text" name="rs"/></td></tr>
		<tr><td></td><td><input type="submit" value="PAY"/>
					
					<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
					</table>
               		</form>