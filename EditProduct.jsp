<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ElectroZone - Edit Product</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f7fa;
        margin: 0; padding: 0;
    }
    header {
        background-color: #1e2a38;
        color: white;
        text-align: center;
        padding: 30px 20px;
        font-size: 32px;
        font-weight: bold;
        letter-spacing: 1.2px;
    }
    .container {
        max-width: 400px;
        margin: 40px auto 100px auto;
        background: white;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.12);
        text-align: center;
    }
    h2 {
        color: #1e2a38;
        margin-bottom: 30px;
        font-weight: 700;
    }
    input[type="text"] {
        width: 100%;
        padding: 12px 10px;
        margin: 12px 0 25px 0;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 16px;
        font-weight: 500;
    }
    input[type="submit"] {
        width: 100%;
        padding: 14px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 18px;
        font-weight: 600;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    footer {
        text-align: center;
        padding: 20px 0;
        background-color: #1e2a38;
        color: white;
        position: fixed;
        bottom: 0;
        width: 100%;
        font-size: 16px;
        font-weight: 600;
        letter-spacing: 0.8px;
    }
</style>
</head>
<body>

<header>
    ElectroZone - Edit Product
</header>

<div class="container">
    <h2>
       <%
          AdminBean abean=(AdminBean)session.getAttribute("abean");
          ProductBean pb=(ProductBean)request.getAttribute("pbean");
          out.println("Hello "+abean.getFname()+" Please edit!!!<br><br>");
       %>
    </h2>

    <form action="update" method="post">
       <strong>Product Price :</strong> <input type="text" name="pprice" value="<%= pb.getP_price() %>"><br><br>
       <strong>Product Quantity :</strong> <input type="text" name="pqty" value="<%= pb.getP_quantity() %>"><br><br>
       <input type="hidden" name="pcode" value="<%= pb.getP_code() %>">
       <input type="submit" value="Update">
    </form>
</div>

<footer>
    © 2025 ElectroZone. Admin Panel.
</footer>

</body>
</html>
