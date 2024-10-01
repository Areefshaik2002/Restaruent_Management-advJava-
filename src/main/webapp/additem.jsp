<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String status=(String)request.getAttribute("status"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Item</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background: url('https://img.freepik.com/premium-photo/engaging-moment-two-diners-exploring-restaurant-menu-with-qr-code-rustic-wooden-table_209190-256857.jpg?w=740') no-repeat center center fixed; /* Add background image */
        background-size: cover; /* Ensure the image covers the whole background */
        color: #fff; /* Set text color to white for contrast */
    }

    h1 {
        color: #fff;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Add text shadow for readability */
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
        width: 50%;
        margin: auto;
        margin-top: 100px;
    }

    table {
        background-color: rgba(255, 255, 255, 0.9); /* Form background with slight transparency */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);
        width: 80%;
        margin: auto;
    }

    table td {
        padding: 10px;
        font-size: 18px;
        color: #000; /* Text color inside the form */
    }

    input[type="text"], input[type="submit"], input[type="radio"] {
        padding: 10px;
        font-size: 16px;
        margin: 5px;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
        border-radius: 5px;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    td[colspan="2"] {
        color: red;
        font-weight: bold;
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
        <form action='saveitems'>
            <table>
                <% if(status != null){ %>
                <tr>
                    <td colspan="2"><%= status %></td>
                </tr>
                <% } %>
                <tr>
                    <td>Name</td>
                    <td><input type='text' name='name' style="width: 100%;"></td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td>
                        <input type='radio' name='type' value='veg'> Veg 
                        <input type='radio' name='type' value='non-veg'> Non-Veg
                    </td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td>
                        <input type='radio' name='quantity' value='single'> Single
                        <input type='radio' name='quantity' value='double'> Double
                        <input type='radio' name='quantity' value='triple'> Triple
                        <input type='radio' name='quantity' value='jumbo'> Jumbo
                    </td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type='text' name='price' style="width: 100%;"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type='submit' value='Add Item'></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
