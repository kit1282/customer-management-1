<%@page import="java.sql.*"%>
<html>
 <body onload="activeLink('delete')">
    <%
    String cid=request.getParameter("cid");
    PreparedStatement ps=(PreparedStatement)application.getAttribute("search");
    ps.setString(1,cid);
    ResultSet rst=ps.executeQuery();
    if(rst.next())
    {
    	%>
    	<%@ include file="navbar.jsp" %>
    	<form action="delete-record.jsp">
    	<table class='tar' border='1'>
    	 <tr style='background-color:red;color:white;font-size:2vw'>
    	  <th colspan="2" style='text-align: center'>Customer Details</th>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Customer id</th>
    	    <td class='padd'><%=cid%><input type='hidden' value='<%=cid%>' name='cid'></td>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Customer first name</th>
    	    <td class='padd'><%=rst.getString(2)%></td>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Customer last name</th>
    	    <td class='padd'><%=rst.getString(3)%></td>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Customer address</th>
    	    <td class='padd'><%=rst.getString(4)%></td>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Customer phone</th>
    	    <td class='padd'><%=rst.getString(5)%></td>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Customer email</th>
    	    <td class='padd'><%=rst.getString(6)%></td>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Customer age</th>
    	    <td class='padd'><%=rst.getString(7)%></td>
    	 </tr>
    	 <tr>
    	  <td class="padd" colspan="2" align="right">
    	   <button class='btn btn-danger'>Confirm Delete</button>
    	   <input type="button" value='Cancel' class='btn btn-primary' onclick='history.back()'>
    	  </td>
    	 </tr>
    	</table>
    	</form>
    	<%
    }
    else
    {
    	%>
    	<jsp:include page="delete-customer.jsp" />
    	<div class='dvv'>
    	   <label class='la' style='color:red'>Customer with id <span><%=cid%></span> does not exist</label>
    	</div>
    	<%
    }
 	%>    
 </body>
</html>