<%@ include file="navbar.jsp" %>
<html>
 <body onload="activeLink('add')">
   <div class='container'>
    <div class='card col-md-10 mx-auto'>
     <div class='card-body'>
     <form action="save-record.jsp" method="post">
      <div class='row'>
        <div class='form-group col-md-12'>
          <label for="cid">Enter customer id</label>
          <input type='text' class='form-control' name='cid' id='cid' required>
        </div>
       </div>
       <div class='row'>
        <div class='form-group col-md-6'>
          <label for="firstname">Enter first name</label>
          <input type='text' class='form-control' name='firstname' id='firstname' required>
        </div>
        <div class='form-group col-md-6'>
          <label for="lastname">Enter last name</label>
          <input type='text' class='form-control' name='lastname' id='lastname' required>
        </div>
       </div>
       <div class='row'>
        <div class='form-group col-md-6'>
          <label for="address">Enter address</label>
          <input type='text' class='form-control' name='address' id='address' required>
        </div>
        <div class='form-group col-md-6'>
          <label for="phone">Enter phone number</label>
          <input type='text' class='form-control' name='phone' id='phone' required>
        </div>
       </div>
       <div class='row'>
        <div class='form-group col-md-6'>
          <label for="email">Enter email id</label>
          <input type='text' class='form-control' name='email' id='email' required>
        </div>
        <div class='form-group col-md-6'>
          <label for="age">Enter age</label>
          <input type='text' class='form-control' name='age' id='age' required>
        </div>
       </div>
       <div class='row'>
        <div class='form-group col-md-12'>
          <button class='btn btn-primary'>Add Customer</button>
        </div>
       </div>
      </form>
     </div>
    </div>
   </div>
 </body>
</html>