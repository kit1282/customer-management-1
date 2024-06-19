<%@page import="com.cetpa.*"%>
<%@page import="java.sql.*"%>
<%@ include file="navbar.jsp" %>
<html>
 <body onload="activeLink('add')">
  <%
  Customer customer=new Customer();
  customer.setCid(Integer.parseInt(request.getParameter("cid")));
  customer.setFirstname(request.getParameter("firstname"));
  customer.setLastname(request.getParameter("lastname"));
  customer.setAddress(request.getParameter("address"));
  customer.setPhone(request.getParameter("phone"));
  customer.setEmail(request.getParameter("email"));
  customer.setAge(Integer.parseInt(request.getParameter("age")));
  CustomerRepository.saveRecord(customer);
  %>
  <div class='dv'>
	<label class='lamsg'>Customer record has been added successfully</label>
  </div>
 </body>
</html>