<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/3/2023
  Time: 3:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
    <link rel="stylesheet" href="table.css">
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/products">back to list</a>
</p>
<table>
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

</table>
</body>
</html>
