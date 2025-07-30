<%@page import="com.pack1.AdminBean"%>
<%@page import="com.pack1.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ElectroZone - Admin Home</title>
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
        margin-bottom: 40px;
    }
    .container {
        max-width: 500px;
        margin: auto;
        background: white;
        padding: 40px 50px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.12);
        text-align: center;
    }
    h1 {
        color: #1e2a38;
        font-weight: 600;
        font-size: 20px;
        margin-bottom: 30px;
    }
    a {
        display: block;         
        margin: 12px auto;      
        width: 260px;           /* increased width */
        font-size: 18px;
        color: white;
        text-decoration: none;
        font-weight: 700;
        padding: 10px 0;
        border-radius: 8px;
        background-color: #007bff;
        transition: background-color 0.3s ease, color 0.3s ease;
        text-align: center;
    }
    a:hover {
        background-color: #0056b3;
        color: white;
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
        margin-top: 40px;
    }
</style>
</head>
<body>

<header>
    ElectroZone - Admin Home
</header>

<div class="container">
    <h1>
        <%
            String msg=(String)request.getAttribute("msg");
            AdminBean bean=(AdminBean)session.getAttribute("abean");
            out.println("Hello "+bean.getFname()+ " "+msg+"<br><br>");
        %>
    </h1>
    <a href="AddProduct.html">Add Product</a>
    <a href="view1">View Product</a>
    <a href="Logout">Logout</a>
</div>

<footer>
    © 2025 ElectroZone. Admin Access Only.
</footer>

</body>
</html>
