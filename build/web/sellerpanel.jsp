<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 String user=(String)session.getAttribute("user1");
%>
<!DOCTYPE html>
<html>
<head>
  <title>Seller Panel</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f9f9f9;
      margin: 0;
      padding: 0;
    }

    .container {
      width: 400px;
      margin: 50px auto;
      background-color: #ffffff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
      color: #6C63FF;
      font-size: 24px;
      margin-bottom: 30px;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
      color: #333333;
      font-size: 16px;
    }

    .form-group input[type="text"],
     .form-group input[type="text"],
    .form-group input[type="text"],
    .form-group input[type="text"],
    .form-group input[type="file"] {
      width: 100%;
      padding: 12px;
      border-radius: 5px;
      border: 1px solid #dddddd;
      font-size: 16px;
      color: #555555;
    }

    .form-group input[type="submit"] {
      background-color: #6C63FF;
      color: #ffffff;
      border: none;
      padding: 14px 20px;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
    }

    .business-account {
      text-align: center;
      margin-top: 20px;
    }

    .business-account p {
      margin-bottom: 0;
      font-size: 14px;
      color: #555555;
    }

    .business-account a {
      color: #6C63FF;
      text-decoration: none;
    }

    .business-account a:hover {
      text-decoration: underline;
    }
  </style>
  
</head>
<body>
  <div class="container">
    <h2>Welcome <% out.print(user); %></h2>
    <form action="login.jsp">
      <div class="form-group">
        <label for="name">Product Name:</label>
        <input type="text" id="name" name="pname" required>
      </div>
           <div class="form-group">
        <label for="name">Product Description:</label>
        <input type="text" id="name" name="pdes" required>
      </div>
      <div class="form-group">
        <label for="email">Quantity:</label>
        <input type="text" id="email" name="pqty">
      </div>
      <div class="form-group">
        <label for="password">Price:</label>
        <input type="text" id="password" name="price" required>
      </div>
      <div class="form-group">
        <label for="phone">Product Image</label>
        <input type="file" id="phone" name="pimage" required>
      </div>
      <div class="form-group">
        <input type="submit" name=but value="Add Your Product">
      </div>
    </form>
    <div class="business-account">
      <p>Want To See Your Listed Product?<a href="userhome.jsp">Redirect To Main Site </a></p>
    </div>
  </div>
</body>
</html>
