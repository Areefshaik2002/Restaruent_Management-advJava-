<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String status = (String) request.getAttribute("status"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Item</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background: url('https://img.freepik.com/free-photo/fresh-gourmet-meal-beef-taco-salad-plate-generated-by-ai_188544-13382.jpg?t=st=1727763384~exp=1727766984~hmac=bf8b3dd86a85f0d2ae716c24d69473795ab96e0e2bf731f77e5af60aefd0992e&w=826') no-repeat center center fixed; /* Replace 'your-background-image.jpg' with the actual image path */
        background-size: cover;
        color: #00000;
    }

    h1 {
        color: #fff;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7); /* Text shadow for better readability */
    }

    a {
        color: #ffffff;
        text-decoration: none;
        font-size: 18px;
        margin: 10px;
    }

    hr {
        border: 0;
        height: 2px;
        background-color: #fff;
        width: 80%;
    }

    table {
        background-color: rgba(255, 255, 255, 0.8); /* Transparent table background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* Box shadow for better visibility */
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    td {
        padding: 10px;
    }

    .form-title {
        color: #333;
        font-size: 20px;
        text-align: center;
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
        <form action='edititem'>
            <table>
                <% if (status != null) { %>
                <tr>
                    <td colspan='2' align='center'><%= status %></td>
                </tr>
                <% } %>
                <tr>
                    <td>ID</td>
                    <td><input type='text' name='id' value='<%= request.getParameter("id") %>'></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type='text' name='name' value='<%= request.getParameter("name") %>'></td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td>
                        <input type='radio' name='type' value='veg' 
                               <%= "veg".equals(request.getParameter("type")) ? "checked" : "" %>> Veg
                        <input type='radio' name='type' value='non-veg' 
                               <%= "non-veg".equals(request.getParameter("type")) ? "checked" : "" %>> Non-Veg
                    </td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td>
                        <input type='radio' name='quantity' value='single' 
                               <%= "single".equals(request.getParameter("quantity")) ? "checked" : "" %>> Single
                        <input type='radio' name='quantity' value='double' 
                               <%= "double".equals(request.getParameter("quantity")) ? "checked" : "" %>> Double
                        <input type='radio' name='quantity' value='triple' 
                               <%= "triple".equals(request.getParameter("quantity")) ? "checked" : "" %>> Triple
                        <input type='radio' name='quantity' value='jumbo' 
                               <%= "jumbo".equals(request.getParameter("quantity")) ? "checked" : "" %>> Jumbo
                    </td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type='text' name='price' value='<%= request.getParameter("price") %>'></td>
                </tr>
                <tr>
                    <td colspan='2'><input type='submit' value='Update Item'></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
