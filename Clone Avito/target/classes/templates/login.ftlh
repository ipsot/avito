<!DOCTYPE html>
<html>
<head>
    <title>
        BUYSELL
    </title>
</head>
<body>
<h1>BUYSELL</h1>
<h4>Authorized</h4>
<form action="/login" method="post">
    E-mail: <input type="email" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Enter">
</form>
<a href="/registration">Registration</a>
</body>
</html>