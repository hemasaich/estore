<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>ElectroZone - Buy Product</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0; 
    padding: 0;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    background:url('https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&w=1470&q=80') no-repeat center center fixed;
    background-size: cover;
  }
  header {
    background-color: #1e2a38;
    color: white;
    padding: 20px;
    text-align: center;
    font-weight: 600;
    font-size: 1.8rem;
  }
  .container {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 40px 20px;
  }
  .content-box {
    background: white;
    border-radius: 15px;
    padding: 35px 45px;
    width: 500px;
    box-shadow: 0 12px 25px rgba(0,0,0,0.2);
    color: #222;
  }
  h1 {
    font-weight: 700;
    font-size: 1.5rem;
    background: linear-gradient(90deg, #764ba2, #667eea);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    margin-bottom: 30px;
    text-align: center;
  }
  form label {
    display: block;
    margin-bottom: 6px;
    font-weight: 600;
    color: #333;
    font-size: 14px;
  }
  form input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 18px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 16px;
    box-sizing: border-box;
  }
  input[type="submit"] {
    width: 100%;
    padding: 12px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 18px;
    cursor: pointer;
    font-weight: 600;
    transition: background-color 0.3s ease;
  }
  input[type="submit"]:hover {
    background-color: #0056b3;
  }
  footer {
    background-color: #1e2a38;
    color: white;
    text-align: center;
    padding: 15px;
    font-size: 0.9rem;
    letter-spacing: 1px;
  }
</style>
</head>
<body>

<header>
  ElectroZone - Buy Product
</header>

<div class="container">
  <div class="content-box">
    <h1>
      <%
        CustomerBean cbean=(CustomerBean)session.getAttribute("cbean");
        out.println("Hello "+cbean.getFname()+ " please fill the form to buy product !!");
      %>
    </h1>
    <form action="buyproduct" method="post">
      <label for="pcode">Product Code :</label>
      <input type="text" id="pcode" name="pcode" value="<%= ((ProductBean)request.getAttribute("pbean")).getP_code() %>" readonly>

      <label for="pname">Product Name :</label>
      <input type="text" id="pname" name="pname" value="<%= ((ProductBean)request.getAttribute("pbean")).getP_name() %>" readonly>

      <label for="pcom">Product Company :</label>
      <input type="text" id="pcom" name="pcom" value="<%= ((ProductBean)request.getAttribute("pbean")).getP_company() %>" readonly>

      <label for="pprice">Product Price :</label>
      <input type="text" id="pprice" name="pprice" value="<%= ((ProductBean)request.getAttribute("pbean")).getP_price() %>" readonly>

      <label for="pqty">Product Quantity :</label>
      <input type="text" id="pqty" name="pqty" value="<%= ((ProductBean)request.getAttribute("pbean")).getP_quantity() %>" readonly>

      <label for="req">Required No :</label>
      <input type="text" id="req" name="req" required>

      <input type="submit" value="Buy">
    </form>
  </div>
</div>

<footer>
  © 2025 ElectroZone. Customer Access Only.
</footer>

</body>
</html>
