<%@page import="com.model.Items"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% Items item = (Items) request.getAttribute("item"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurant Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/free-photo/mexican-food-concept-with-smartphone_23-2147812101.jpg?t=st=1727763863~exp=1727767463~hmac=7fdcc35f9394b4a0b6c7c2f5288e3aed8f825efa614fe5bdecab754ccf06d697&w=740') no-repeat center center fixed; /* Replace with your image path */
            background-size: cover;
            margin: 0;
            padding: 0;
            color: #fff;
        }

        h1 {
            color: Gold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7); /* Text shadow for better readability */
            margin-bottom: 20px;
        }

        a {
            color: gold;
            text-decoration: none;
            background-color: #007BFF;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #0056b3;
        }

        hr {
            border: none;
            height: 2px;
            background-color: #fff;
            margin-bottom: 20px;
        }

        table {
            background-color: black; /* Transparent background for the table */
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* Shadow for the table */
            padding: 20px;
        }

        th, td {
            padding: 10px 20px;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        td a {
            color: white;
            text-decoration: none;
        }

        td a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <center>
        <h1>Welcome to Restaurant Management System</h1>
        <h1><a href="addeitem.jsp">Add Item</a></h1>
        <h1><a href="viewitems">View All Items</a></h1>
        <h1><a href="searchitem.jsp">Search Item</a></h1>
        <hr>
        
        <% if (item.getId() != 0) { %>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Type</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <tr>
                <td><c:out value="${item.id}"></c:out></td>
                <td><c:out value="${item.name}"></c:out></td>
                <td><c:out value="${item.type}"></c:out></td>
                <td><c:out value="${item.quantity}"></c:out></td>
                <td><c:out value="${item.price}"></c:out></td>
                <td>
                    <a href="edititem.jsp?id=${item.id}&name=${item.name}&type=${item.type}&quantity=${item.quantity}&price=${item.price}">
                        Edit
                    </a>
                </td>
                <td>
                    <a href="deleteitem?id=${item.id}">Delete</a>
                </td>
            </tr>
        </table>
        <% } else { %>
        <h1>Item not found...</h1>
        <% } %>
    </center>
</body>
</html>
