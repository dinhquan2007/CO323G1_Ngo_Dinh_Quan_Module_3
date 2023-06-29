<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 6/29/2023
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>h1, h4 {
        color: grey;
    }
    </style>

</head>
<body>
<h1>
    Result
</h1>
<h4>Product Description :${productDescription}</h4>
<h4>List Price : ${listPrice} d</h4>
<h4>Discount Percent : ${discountPercent}%</h4>
<h4>Discount Amount : ${discountAmount}d</h4>
<h4>Discount Price : ${discountPrice}d</h4>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
