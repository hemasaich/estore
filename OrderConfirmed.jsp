<%@page import="com.pack1.CustomerBean"%>
<%@page import="com.pack1.CustomerUpdateProductDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>ElectroZone - Order Confirmation</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0; 
    padding: 0;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    background: url('https://png.pngtree.com/thumb_back/fw800/background/20240103/pngtree-some-electronic-gadgets-on-a-wooden-table-image_13184033.png') no-repeat center center fixed;
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
    background: rgba(0, 0, 0, 0.85);  /* Darker black background */
    border-radius: 15px;
    padding: 35px 45px;
    width: 600px;
    box-shadow: 0 12px 25px rgba(0,0,0,0.8);
    text-align: center;
    color: #ddd;  /* Slightly lighter than #eee for softer contrast */
  }
  .welcome-text {
    font-weight: 700;
    font-size: 1.7rem;
    color: white;  /* Bold white text */
    margin-bottom: 25px;
    text-shadow: 1px 1px 4px rgba(120, 120, 120, 0.7);
  }
  .info-text {
    font-size: 1.2rem;
    margin: 10px 0 30px 0;
    color: #c0c0c0;
  }
  a.button-link {
    display: inline-block;
    margin: 12px 25px;
    padding: 12px 25px;
    font-size: 1rem;
    font-weight: 600;
    color: white;
    background: linear-gradient(45deg, #a078d6, #7a90e6);
    border-radius: 10px;
    text-decoration: none;
    box-shadow: 0 6px 12px rgba(117, 126, 214, 0.8);
    transition: background 0.3s ease;
  }
  a.button-link:hover {
    background: linear-gradient(45deg, #7a90e6, #a078d6);
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
  ElectroZone - Order Confirmation
</header>

<div class="container">
  <div class="content-box">
    <div class="welcome-text">
      <%
        CustomerBean cbean =(CustomerBean)session.getAttribute("cbean");
        out.print("Hello " + cbean.getFname());
      %>
    </div>
    <div class="info-text">
      <%
        double finalprice=(double)request.getAttribute("FinalPrice");
        out.print("<strong>You Have Charged : " + finalprice + "</strong><br><br>");
        out.print("<strong>Your Order is Placed Successfully</strong>");
      %>
    </div>
    <a href="viewproduct" class="button-link">View Product</a>
    <a href="logout" class="button-link">Logout</a>
  </div>
</div>

<footer>
  © 2025 ElectroZone. Customer Access Only.
</footer>

</body>
</html>
