<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/3/2023
  Time: 3:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="table.css">
</head>
<body>
<p>
    <a href="/products">back to list</a>
</p>
<form method="post"></form>
<h3>Are you sure delete ?</h3>
<fieldset>
    <legend>Product information</legend>
    <table>

        <tr>
            <td>ID :</td>
            <td id="id">${product.getId()}</td>
        </tr>
        <tr>
            <td>Name :</td>
            <td>${product.getName()}</td>
        </tr>
        <tr>
            <td>Price :</td>
            <td>${product.getPrice()}</td>
        </tr>
        <tr>
            <td>Description :</td>
            <td>${product.getDescription()}</td>
        </tr>
        <tr>
            <td>Producer :</td>
            <td>${product.getProducer()}</td>
        </tr>
        <tr>
            <td><input type="submit" value="Delete Product"></td>
            <td><a href="/products">Back to product list</a></td>
        </tr>

    </table>
</fieldset>

</body>
</html>
