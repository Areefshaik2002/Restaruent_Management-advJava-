<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String status = (String) request.getAttribute("status"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Item</title>
<style>
    body {
        background-image: url('https://img.freepik.com/free-photo/mexican-food-concept-with-smartphone_23-2147812101.jpg?t=st=1727763863~exp=1727767463~hmac=7fdcc35f9394b4a0b6c7c2f5288e3aed8f825efa614fe5bdecab754ccf06d697&w=740'); /* Replace with your image path */
        background-size: cover;
        background-position: center;
        font-family: Arial, sans-serif;
    }
    
    h1 {
        color: blue;
        text-shadow: 2px 2px 4px #000;
    }
    
    a {
        color: yellow;
        text-decoration: none;
        font-size: 20px;
    }
    
    a:hover {
        color: #f0c040;
    }
    
    table {
        background-color: rgba(255, 255, 255, 0.8); /* Transparent effect */
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.3);
    }
    
    td {
        padding: 10px;
        font-size: 18px;
    }
    
    input[type="text"] {
        width: 200px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    
    input[type="submit"] {
        padding: 10px 20px;
        background-color: green;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 18px;
    }
    
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    
    .status {
        font-size: 18px;
        color: red;
    }
</style>
</head>
<body>
    <center>
        <h1>Welcome to Restaurant Management System</h1>
        <h1><a href='additem.jsp'>Add Item</a></h1>
        <h1><a href='viewitems'>View All Items</a></h1>
        <h1><a href='searchitem.jsp'>Search item</a></h1>
        <hr>
        <form action='searchitem'>
            <table border='0'>
                <% if(status != null){ %>
                    <tr>
                        <td colspan="2" class="status" align="center"><%= status %></td>
                    </tr>
                <% } %>
                <tr>
                    <td>Id</td>
                    <td><input type='text' name='id'></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type='submit' value='Search Item'>
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
