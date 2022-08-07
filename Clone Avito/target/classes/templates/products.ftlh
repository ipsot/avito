<!DOCTYPE html>
<html>
<head>
    <title>Buysell</title>
<body>
<h1>BUYSELL</h1><hr>
<#if user.email??>
    <h3>Username: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Exit from account">
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Admin panel</a>
    </#if>
<#else>
    <a href="/login">Enter</a></h1>
</#if>
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
<#if user.email??>
    <hr>
    <h3>Add new product</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Announcement title: <input type="text" name="title"/><br>
        Product description: <input type="text" name="description"/><br>
        Price: <input type="number" name="price"/><br>
        City: <input type="text" name="city"/><br>
        First photo: <input type="file" name="file1"/><br>
        Second photo: <input type="file" name="file2"/><br>
        Third photo: <input type="file" name="file3"/><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add product">
    </form>
</#if>

</body>
</head>
</html>