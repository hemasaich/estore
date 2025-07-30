<%@page import="java.util.Iterator"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ElectroZone - Product List</title>
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
        padding: 30px 20px;
        font-size: 32px;
        font-weight: bold;
        letter-spacing: 1.2px;
    }

    .container {
        padding: 40px 50px;
        max-width: 900px;
        margin: 40px auto 80px auto;
        background-color: white;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.12);
    }

    .greeting-line {
        font-size: 22px;
        color: #1e2a38;
        font-weight: 700;
        margin-bottom: 30px;
    }

    .product-entry {
        margin: 25px 0;
        padding: 15px 20px;
        background-color: #eef3fb;
        border-radius: 8px;
        font-size: 18px;
        font-weight: 700;
        color: #212529;
    }

    .product-entry a {
        margin-left: 15px;
        text-decoration: none;
        padding: 7px 14px;
        border-radius: 6px;
        font-size: 15px;
        font-weight: 600;
        transition: background-color 0.3s ease;
    }

    .edit-btn {
        background-color: #ffc107;
        color: #212529;
    }

    .edit-btn:hover {
        background-color: #e0a800;
    }

    .delete-btn {
        background-color: #dc3545;
        color: white;
    }

    .delete-btn:hover {
        background-color: #bd2130;
    }

    .back-btn {
        display: inline-block;
        margin-top: 30px;
        text-decoration: none;
        background-color: #007bff;
        color: white;
        padding: 12px 28px;
        font-size: 16px;
        font-weight: 600;
        border-radius: 8px;
        box-shadow: 0 5px 15px rgba(0, 123, 255, 0.4);
        transition: background-color 0.3s ease;
    }

    .back-btn:hover {
        background-color: #0056b3;
        box-shadow: 0 7px 20px rgba(0, 86, 179, 0.6);
    }

    .logout-btn {
        display: inline-block;
        margin-top: 40px;
        background-color: #dc3545;
        color: white;
        padding: 14px 35px;
        font-size: 17px;
        font-weight: 700;
        border-radius: 10px;
        text-decoration: none;
        box-shadow: 0 6px 18px rgba(220, 53, 69, 0.4);
        transition: all 0.3s ease;
    }

    .logout-btn:hover {
        background-color: #c82333;
        transform: scale(1.05);
        box-shadow: 0 10px 25px rgba(220, 53, 69, 0.6);
    }

    .no-products {
        background-color: #fff3cd;
        color: #856404;
        padding: 20px;
        border-radius: 10px;
        margin-bottom: 25px;
        text-align: center;
        font-size: 20px;
        font-weight: 600;
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
    ElectroZone - Product List
</header>

<div class="container">
    <center>
    <div class="greeting-line">
    <%
        AdminBean abean=(AdminBean)session.getAttribute("abean");
        ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("productlist");
        out.println("Hello "+abean.getFname()+" these are your Product Details<br><br>");

        if(al.size()==0) {
            out.println("<div class='no-products'>Product are NOT available</div>");
    %>
            <a href="AdminHome.jsp" class="back-btn">Admin Home Page</a>
    <%
        } else {
            Iterator<ProductBean> i=al.iterator();
            while(i.hasNext()) {
                ProductBean pb=i.next();
                out.println("<div class='product-entry'>"
                    + pb.getP_code()+" "+pb.getP_name()+" "+pb.getP_company()+" "+pb.getP_price()+" "+pb.getP_quantity()
                    +" <a href='edit?pcode="+pb.getP_code()+"' class='edit-btn'>Edit</a>"
                    +" <a href='Delete?pcode="+pb.getP_code()+"' class='delete-btn'>Delete</a>"
                    + "</div>");
            }
    %>
         <a href="Logout" class="logout-btn">Logout</a>
    <%
        }
    %>
    </div>
    </center>
</div>

<footer>
    © 2025 ElectroZone. Product Management Panel.
</footer>

</body>
</html>
