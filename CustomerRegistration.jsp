<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Login - ElectroZone</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            /* Background image with overlay */
            background:url('https://i.pinimg.com/originals/b5/eb/1d/b5eb1d9579f638a6fc7b19cd11b69b49.jpg') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }
        header {
            background-color: #1e2a38;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 70vh;
        }
        .login-box {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.5);
            width: 320px;
            color: white;
        }
        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #ffffff;
        }
        /* Message box styling - lighter */
        .message-box {
            color: #5a3e00; /* dark brown */
            background: #fff8dc; /* cornsilk - very light yellow */
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
            text-align: center;
            font-weight: 600;
            border: 1.5px solid #f2d488; /* soft yellow border */
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0 20px 0;
            border-radius: 6px;
            font-size: 16px;
            background-color: rgba(255, 255, 255, 0.85);
            color: #222;
            border: none;
        }
        input[type="text"]::placeholder,
        input[type="password"]::placeholder {
            color: #666;
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
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
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
        }
        .links {
            text-align: center;
            margin-top: 15px;
        }
        .links a {
            color: #66a0ff;
            text-decoration: none;
            font-weight: 600;
            margin: 0 10px;
        }
        .links a:hover {
            color: #aabfff;
        }
    </style>
</head>
<body>

<header>
    <h1>ElectroZone - Customer Portal</h1>
</header>

<div class="login-container">
    <div class="login-box">
        <h2>Customer Login</h2>

        <!-- Display message if present -->
        <%
            String msg = (String) request.getAttribute("msg");
            if (msg != null && !msg.trim().isEmpty()) {
        %>
            <div class="message-box"><%= msg %></div>
        <%
            }
        %>

        <form action="clog" method="post">
            <label>UserName :</label>
            <input type="text" name="u_name" placeholder="Enter Username" required>

            <label>Password :</label>
            <input type="password" name="u_pwd" placeholder="Enter Password" required>

            <input type="submit" value="Login">
        </form>
        <div class="links">
            <a href="CustomerRegister.html">New Customer? Register Here</a>
        </div>
    </div>
</div>

<footer>
    © 2025 ElectroZone. Customer Access Only.
</footer>

</body>
</html>
