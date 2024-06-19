<%@page import="java.sql.*"%>
<html>
 <body onload="activeLink('edit')">
    <%
    String cid=request.getParameter("cid");
    PreparedStatement ps=(PreparedStatement)application.getAttribute("search");
    ps.setString(1,cid);
    ResultSet rst=ps.executeQuery();
    if(rst.next())
    {
    	%>
    	<%@ include file="navbar.jsp" %>
    	<form action="update-record.jsp">
    	<table class='tar' border='1'>
    	 <tr style='background-color:green;color:white;font-size:2vw'>
    	  <th colspan="2" style='text-align: center'>Customer Details</th>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Customer id</th>
    	    <td class='padd'><%=cid%><input type='hidden' value='<%=cid%>' name='cid'></td>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Edit first name</th>
    	    <td class='padd'><input type='text' value='<%=rst.getString(2)%>' name='firstname' style='width:100%'></td>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Edit last name</th>
    	    <td class='padd'><input type='text' value='<%=rst.getString(3)%>' name='lastname' style='width:100%'></td>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Edit address</th>
    	    <td class='padd'><input type='text' value='<%=rst.getString(4)%>' name='address' style='width:100%'></td>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Edit phone</th>
    	    <td class='padd'><input type='text' value='<%=rst.getString(5)%>' name='phone' style='width:100%'></td>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Edit email</th>
    	    <td class='padd'><input type='text' value='<%=rst.getString(6)%>' name='email' style='width:100%'></td>
    	 </tr>
    	 <tr>
    	    <th class='padd'>Edit age</th>
    	    <td class='padd'><input type='text' value='<%=rst.getString(7)%>' name='age' style='width:100%'></td>
    	 </tr>
    	 <tr>
    	  <td class="padd" colspan="2" align="right">
    	   <button class='btn btn-primary'>Update Record</button>
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
    	<jsp:include page="edit-customer.jsp" />
    	<div class='dvv'>
    	   <label class='la' style='color:red'>Customer with id <span><%=cid%></span> does not exist</label>
    	</div>
    	<%
    }
 	%>    
 </body>
</html>