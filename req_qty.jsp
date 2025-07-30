<%@page import="com.pack1.CustomerBean"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>ElectroZone - Products</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background: url('https://www.discovery.org/m/2021/11/different-modern-devices-on-color-background-stockpack-adobe-stock-scaled.jpg') no-repeat center center fixed;
    background-size: cover;
    margin: 0; 
    padding: 0;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
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
    align-items: flex-start;
    padding: 40px 20px;
  }
  .content-box {
    background: white;
    border-radius: 15px;
    padding: 35px 45px;
    width: 600px;
    box-shadow: 0 12px 25px rgba(0,0,0,0.2);
    text-align: left;
    color: #222;
    font-size: 1.2rem;
    line-height: 1.6;
  }
  .hello-message {
    font-weight: 700;
    font-size: 1.5rem;
    background: linear-gradient(90deg, #764ba2, #667eea);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    margin-bottom: 30px;
  }
  .product-details {
    font-weight: 700;
    margin-bottom: 14px;
  }
  a.buy-button {
    display: inline-block;
    background-color: #28a745;
    color: white !important;
    padding: 4px 10px;
    border-radius: 8px;
    text-decoration: none;
    font-weight: 600;
    font-size: 0.9rem;
    box-shadow: 0 4px 8px rgba(40,167,69,0.6);
    transition: background-color 0.3s ease;
    margin-left: 8px;
  }
  a.buy-button:hover {
    background-color: #218838;
  }
  a.logout {
    display: block;
    width: 120px;
    margin: 40px auto 0;
    background: #dc3545;
    color: white;
    text-align: center;
    padding: 12px;
    border-radius: 10px;
    font-weight: 600;
    text-decoration: none;
    box-shadow: 0 6px 12px rgba(220,53,69,0.7);
    transition: background 0.3s ease;
  }
  a.logout:hover {
    background: #c82333;
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
  ElectroZone - Products
</header>

<div class="container">
  <div class="content-box">
    <%
      ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("productlist2");
      CustomerBean cbean=(CustomerBean)session.getAttribute("cbean");
    %>
    <div class="hello-message">
      Hello <%= cbean.getFname() %> <% out.println(request.getAttribute("msg")); %>
              <% out.println(",Please Check With the Product Quantity !!"); %>
    </div>
    <%
      if(al.size()>0)
      {
         Iterator<ProductBean> i=al.iterator();
         while(i.hasNext())
         {
            ProductBean pb=i.next();
    %>
            <div class="product-details">
              <%= pb.getP_code() %> <%= pb.getP_name() %> <%= pb.getP_company() %> <%= pb.getP_price() %> <%= pb.getP_quantity() %>
              <a href="Buy?pcode=<%= pb.getP_code() %>" class="buy-button">Buy</a>
            </div>
    <%
         }
      }
    %>
    <a href="logout" class="logout">Logout</a>
  </div>
</div>

<footer>
  © 2025 ElectroZone. All rights reserved.
</footer>

</body>
</html>
