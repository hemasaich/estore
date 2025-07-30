<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Dashboard - ElectroZone</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            background-color: #f0f2f5;
        }

        header {
            background-color: #1e2a38;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .dashboard-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 75vh;
        }

        .dashboard-box {
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 350px;
        }

        .dashboard-box h2 {
            color: #1e2a38;
            margin-bottom: 30px;
        }

        .dashboard-box a {
            display: block;
            margin: 15px 0;
            padding: 12px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .dashboard-box a:hover {
            background-color: #0056b3;
        }

        footer {
            background-color: #1e2a38;
            color: white;
            text-align: center;
            padding: 15px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <header>
        <h1>ElectroZone - Admin Dashboard</h1>
    </header>

    <div class="dashboard-container">
        <div class="dashboard-box">
            <h2>
                <% 
                   AdminBean bean = (AdminBean) session.getAttribute("abean");
                   out.println("Welcome, Mr. " + bean.getFname() + "!");
                %>
            </h2>

            <a href="AddProduct.html">Add Product</a>
            <a href="view1">View Product</a>
            <a href="Logout">Logout</a>
        </div>
    </div>

    <footer>
        © 2025 ElectroZone | Admin Panel
    </footer>

</body>
</html>
