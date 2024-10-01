<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Items</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background: url('https://img.freepik.com/free-photo/fresh-gourmet-meal-beef-taco-salad-plate-generated-by-ai_188544-13382.jpg?t=st=1727763384~exp=1727766984~hmac=bf8b3dd86a85f0d2ae716c24d69473795ab96e0e2bf731f77e5af60aefd0992e&w=826') no-repeat center center fixed; /* Add background image */
        background-size: cover; /* Ensure the image covers the whole background */
        color: #000; /* Text color */
    }

    h1 {
        color: #fff;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7); /* Add text shadow for better visibility */
    }

    a {
        text-decoration: none;
        color: #fff;
        padding: 10px 20px;
        background-color: rgba(0, 0, 0, 0.6); /* Transparent background for links */
        border-radius: 5px;
        transition: background-color 0.3s ease;
        font-size: 18px;
    }

    a:hover {
        background-color: rgba(0, 0, 0, 0.8);
    }

    center {
        padding: 50px;
        background-color: rgba(0, 0, 0, 0.5); /* Slight transparency for content background */
        border-radius: 10px;
        width: 80%; /* Increase the width to make it more centered */
        margin: auto;
        margin-top: 50px;
    }

    table {
        width: 100%; /* Make the table fill the container */
        margin: 20px 0;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
        border-radius: 10px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3); /* Add some shadow for depth */
        text-align: left;
    }

    th, td {
        padding: 15px;
        text-align: center;
        font-size: 16px;
        color: #000; /* Text color */
    }

    th {
        background-color: rgba(0, 0, 0, 0.7); /* Darker background for headers */
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: rgba(0, 0, 0, 0.1); /* Light stripe for even rows */
    }

    tr:hover {
        background-color: rgba(0, 0, 0, 0.2); /* Hover effect on table rows */
    }

    td a {
        background-color: #4CAF50;
        color: white;
        padding: 5px 10px;
        border-radius: 5px;
        text-decoration: none;
    }

    td a:hover {
        background-color: #45a049;
    }

</style>
</head>
<body>
    <center>
        <h1>Welcome to Restaurant Management System</h1>
        <h1><a href='additem.jsp'>Add Item</a></h1>
        <h1><a href='viewitems'>View All Items</a></h1>
        <h1><a href='searchitem.jsp'>Search Item</a></h1>
        <hr>
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Type</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach items="${list}" var="item">
                <tr>
                    <td><c:out value="${item.id}"></c:out></td>
                    <td><c:out value="${item.name}"></c:out></td>
                    <td><c:out value="${item.type}"></c:out></td>
                    <td><c:out value="${item.quantity}"></c:out></td>
                    <td><c:out value="${item.price}"></c:out></td>
                    <td><a href='edititem.jsp?id=${item.id}&name=${item.name}&type=${item.type}&quantity=${item.quantity}&price=${item.price}'>Edit</a></td>
                    <td><a href='deleteitem?id=${item.id}'>Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </center>
</body>
</html>
