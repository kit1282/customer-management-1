<%@page import="com.cetpa.*"%>
<%@page import="java.util.List"%>
<%@ include file="navbar.jsp" %>
<html>
 <body onload="activeLink('list')">
   <div class='container'>
    <div class='card col-md-12 mx-auto'>
     <div class='card-body'>
      <div class='table'>
       <table class='table table-hover'>
        <thead>
         <tr>
          <th>Id</th><th>First name</th><th>Last name</th>
          <th>Address</th><th>Phone number</th><th>Email id</th><th>Age</th>
         </tr>
        </thead>
   	    <tbody>
   	     <%
   	       List<Customer> clist=CustomerRepository.getCustomerList();
   	  	   for(Customer cust:clist)
   		   {
   			   %>
   			    <tr>
   			     <td><%=cust.getCid()%></td>
   			     <td><%=cust.getFirstname()%></td>
   			     <td><%=cust.getLastname()%></td>
   			     <td><%=cust.getAddress()%></td>
   			     <td><%=cust.getPhone()%></td>
   			     <td><%=cust.getEmail()%></td>
   			     <td><%=cust.getAge()%></td>
   			    </tr>
   			   <%
   		   }
   	    %>
   	    </tbody>     
       </table>
      </div>
     </div>
    </div>
   </div>
  </body>
 </html>    