<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurant Management System</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background: url('https://img.freepik.com/premium-photo/room-with-wooden-wall-table-with-plants-it_1028899-1088.jpg?w=740') no-repeat center center fixed; /* Background image */
        background-size: cover; /* Make the image cover the whole background */
        color: white;
    }
    h1 {
        font-size: 36px;
        color: #ffffff;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add some shadow to the text */
    }
    a {
        text-decoration: none;
        color: #fff;
        padding: 10px 20px;
        background-color: rgba(0, 0, 0, 0.6);
        border-radius: 5px;
        font-size: 24px;
        transition: background-color 0.3s ease;
    }
    a:hover {
        background-color: rgba(0, 0, 0, 0.8);
    }
    center {
        padding: 50px;
        background-color: rgba(0, 0, 0, 0.4); /* Slight transparency for content background */
        border-radius: 10px;
        margin-top: 100px;
    }
</style>
</head>
<body>
    <center>
        <h1>Welcome to Restaurant Management System</h1>
        <h1><a href="additem.jsp">Add Items</a></h1>
        <h1><a href="viewitems">View Items</a></h1>
        <h1><a href="searchitem.jsp">Search Items</a></h1>
    </center>
</body>
</html>
