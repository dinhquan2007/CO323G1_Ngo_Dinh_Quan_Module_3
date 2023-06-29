<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form action="/display-discount" method="post">
    <label>Product Description<input type="text" name="Product Description" placeholder="mô tả sản phẩm"></label>
    <label>List Price<input type="text" name="List Price" placeholder="giá niêm yết sản phầm"></label>
    <label>Discount Percent<input type="text" name="Discount Percent" placeholder="tỷ lệ chiết khấu(phần trăm)"></label>
    <input type="submit" id="submit" value="display discount"/>
</form>
</body>
</html>