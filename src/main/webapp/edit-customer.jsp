<%@ include file="navbar.jsp" %>
<html>
  <body onload="activeLink('edit')">
   <form action="get-record.jsp">
   	<table class='ta'>
    <tr>
     <td class='pad'>Enter customer id<span> *</span></td>
     <td class='pad'><input type='number' name='cid' required></td>
     <td class='pad'><button class='btn btn-primary'>Get Record</button></td>
    </tr>
   </table>
   </form>
 </body>
</html>