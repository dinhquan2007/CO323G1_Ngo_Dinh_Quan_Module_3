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
    <title>Title</title>
    <link rel="stylesheet" href="table.css">
</head>
<body>
<p>
    <c:if test="${message}!=null">
        <span class="message">${message}</span>
    </c:if>
</p>
<form method="post">
    <fieldset>
        <legend>
            Product information
        </legend>

        <table>
            <tr>
                <td>Name :</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Price :</td>
                <td><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>description :</td>
                <td><input type="text" name="description" id="description"></td>
            </tr>
            <tr>
                <td>Producer :</td>
                <td><input type="text" name="producer" id="producer"></td>
            </tr>
            <tr>
                <td>Producer :</td>
                <td><input type="submit" value="Update Product"></td>
            </tr>

        </table>
    </fieldset>
</form>
</body>
</html>
