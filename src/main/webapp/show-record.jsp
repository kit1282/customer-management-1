<%@page import="com.cetpa.*"%>
<%@page import="java.sql.*"%>
<html>
 <body onload="activeLink('search')">
    <%
    int cid=Integer.parseInt(request.getParameter("cid"));
    Customer cust=CustomerRepository.getRecord(cid);
    if(cust!=null)
    {
    	%>
    	<%@ include file="navbar.jsp" %>
    	<table class='tar' border='1'>
    	 <tr style='background-color:black;color:white;font-size:2vw'>
    	  <th colspan="2" style='text-align: center'>Customer Details</th>
    	 </tr>
    	 <tr>
    	    <th class='pad'>Customer id</th>
    	    <td class='pad'><%=cid%></td>
    	 </tr>
    	 <tr>
    	    <th class='pad'>Customer first name</th>
    	    <td class='pad'><%=cust.getFirstname()%></td>
    	 </tr>
    	 <tr>
    	    <th class='pad'>Customer last name</th>
    	    <td class='pad'><%=cust.getLastname()%></td>
    	 </tr>
    	 <tr>
    	    <th class='pad'>Customer address</th>
    	    <td class='pad'><%=cust.getAddress()%></td>
    	 </tr>
    	 <tr>
    	    <th class='pad'>Customer phone</th>
    	    <td class='pad'><%=cust.getPhone()%></td>
    	 </tr>
    	 <tr>
    	    <th class='pad'>Customer email</th>
    	    <td class='pad'><%=cust.getEmail()%></td>
    	 </tr>
    	 <tr>
    	    <th class='pad'>Customer age</th>
    	    <td class='pad'><%=cust.getAge()%></td>
    	 </tr>
    	</table>
    	<%
    }
    else
    {
    	%>
    	<jsp:include page="search-customer.jsp" />
    	<div class='dvv'>
    	   <label class='la' style='color:red'>Customer with id <span><%=cid%></span> not found</label>
    	</div>
    	<%
    }
 	%>    
 </body>
</html>