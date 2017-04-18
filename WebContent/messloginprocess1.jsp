







<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="mypackage.*" %>
 
             	<%--</table>--%>
				
  		<%
  		String name=request.getParameter("username");
  		MessManagment.setID(name);
  		int bal=MessManagment.retBal(name);
  		out.println("Current Balance=" + bal);
 %>
							
				<form name=F1 onSubmit="return dil(this)" action="messloginprocess1.jsp" >
				  <table cellspacing="5" cellpadding="3">	
					<TR>
	<TD> Food Type   :</TD> <TD> <SELECT NAME="food"> 
									<option value=b > Breakfast 
									<option value=l > Lunch
									<option value=s > Snacks
									<option value=d > Dinner
																
									</SELECT> </TD>

</TR>
		<tr><td></td><td><input type="submit" value="PAY"/>
					
					<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
					</table>
               		</form>