<!DOCTYPE html>
<html>
<head>
    <title>Buysell</title>
<body>
<h1>BUYSELL<a href="/login">Enter</a></h1>
<hr>
<h4>Products from Russia</h4>
<form action="/" method="get">
    Find for product title: <input type="text" name="title"><br>
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} rub. | <a href="/product/${product.id}">More...</a></p>
    </div>
<#else>
    <h3>Have not products</h3>
</#list>
<hr>
<h3>Add new product</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Announcement title: <input type="text" name="title"/><br>
    Product description: <input type="text" name="description"/><br>
    Price: <input type="number" name="price"/><br>
    City: <input type="text" name="city"/><br>
    Author: <input type="text" name="author"/><br>
    First photo: <input type="file" name="file1"/><br>
    Second photo: <input type="file" name="file2"/><br>
    Third photo: <input type="file" name="file3"/><br>
    <input type="submit" value="Add product">
</form>
</body>
</head>
</html>