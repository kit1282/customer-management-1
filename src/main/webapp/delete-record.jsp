<%@page import="java.sql.*"%>
<%@ include file="navbar.jsp" %>
<html>
 <body onload="activeLink('delete')">
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("delete");
  ps.setString(1,request.getParameter("cid"));
  ps.executeUpdate();
  %>
  <div class='dv'>
	<label class='lamsg'>Customer record has been deleted successfully</label>
  </div>
 </body>
</html>