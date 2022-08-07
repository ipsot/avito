<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h3>Detailed info about ${user.name}</h3>
<b>Tel-number: </b>${user.phoneNumber}<br>
<b>Email: </b>${user.email}<br>
<h4>Products ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} .rub | <a href="/products/${product.id}">More...</a></p>
    </div>
<#else>
    <h3>Have not products</h3>

</#list>

<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>

</body>
</html>