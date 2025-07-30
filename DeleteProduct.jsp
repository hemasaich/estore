<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>ElectroZone - Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f7fa;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #1e2a38;
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 28px;
            font-weight: bold;
        }

        .dashboard-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 50px 20px;
        }

        .welcome-box {
            background-color: white;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 420px;
            text-align: center;
        }

        .welcome-msg {
            font-size: 20px;
            color: #1e2a38;
            margin-bottom: 30px;
            font-weight: 600;
        }

        a {
            display: block;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            padding: 12px 0;
            margin: 10px auto;
            width: 190px;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            transition: background-color 0.3s;
            text-align: center;
        }

        a:hover {
            background-color: #0056b3;
        }

        footer {
            text-align: center;
            padding: 15px;
            background-color: #1e2a38;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
            font-size: 14px;
        }
    </style>
</head>
<body>

<header>
    ElectroZone - Admin Dashboard
</header>

<div class="dashboard-container">
    <div class="welcome-box">
        <div class="welcome-msg">
            <%
                AdminBean bean=(AdminBean) session.getAttribute("abean");
                String data=(String) request.getAttribute("msg");
                out.println("<span style='font-weight:600;'>Hi " + bean.getFname() + " " + data + "</span><br><br>");
            %>
        </div>

        <a href="AddProduct.html">Add Product</a>
        <a href="view1">View Product</a>
        <a href="Logout">Logout</a>
    </div>
</div>

<footer>
    © 2025 ElectroZone. Admin Access Panel.
</footer>

</body>
</html>
