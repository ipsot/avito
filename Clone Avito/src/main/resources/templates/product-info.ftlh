
<!DOCTYPE html>
<html>
<head>
    <title>Buysell</title>
<body>
<h1>BUYSELL</h1><hr>
<h4>More information about product</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/></br><br>
</#list>
<b>Announcement title: </b>${product.title}<br>
<b>Product description: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Author: </b>${product.author}<br>
<hr>
<h3>Add new product</h3>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete product">
</form>
</body>
</head>
</html>