<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h4>Registration</h4>
<form action="/registration" method="post">
    Username: <input type="text" name="name"><br><br>
    Tel-number: <input type="text" name="phoneNumber"><br><br>
    E-mail: <input type="email" name="email"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Registration">

    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>
</form>
</body>
</html>