<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/4/2023
  Time: 9:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Search</title>
</head>
<body>
<form action="users?action=search" method="post">
    <label>
        input country
        <input type="text" name="country" id="country" placeholder="input Country">
    </label>
    <input type="submit" value="Search">
</form>
<c:if test="${listUser!=null}">
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>

            </tr>
        </c:forEach>
    </table>
</c:if>
<h2><a href="/users"></a></h2>

</body>
</html>
