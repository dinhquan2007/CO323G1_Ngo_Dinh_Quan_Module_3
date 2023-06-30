<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 6/30/2023
  Time: 9:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        img{
            width: 40px;
            height: auto;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <th>#</th>
        <th>Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa Chỉ</th>
        <th>Ảnh</th>
    </tr>
<%--    public Customer(String id, String name, String birth, String address, String pathImage)--%>
    <c:forEach var="customer" items="${list}">
        <tr>
            <td><c:out value="${customer.id}"/></td>
            <td><c:out value="${customer.name}"/></td>
            <td><c:out value="${customer.birth}"/></td>
            <td><c:out value="${customer.address}"/></td>
            <td><img src="${customer.pathImage}" alt="ảnh"></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
