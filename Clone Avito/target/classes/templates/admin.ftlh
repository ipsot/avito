<!DOCTYPE html>
<html>
<head>
    <title>Buysell</title>
<body>
<h1>BUYSELL</h1>
<hr>
<h4>Admin panel</h4>
<hr>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Tel-number</th>
        <th>Active</th>
        <th>Roles</th>
        <th>Ban</th>
        <th>Edit user</th>
        <th>Detailed information</th>
    </tr>
    <#list users as user >
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}</#list></th>
            <th>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Ban">
                </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">Edit</a></th>
            <th><a href="/user/${user.id}">Detailed information</a></th>
        </tr>
    <#else >
        <h3>Have not users</h3>
    </#list>
</table>
</body>
</head>
</html>