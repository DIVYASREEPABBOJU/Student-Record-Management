<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<style>
table {
    border: 2px solid black;
    padding: 10px;
}
td {
    padding: 5px;
    font-size: 18px;
}
input {
    width: 250px;
}
</style>
</head>

<body>
<center>

<form action="LoginServlet" method="post">
<table>
<tr>
    <td>Email</td>
    <td><input type="email" name="email" required></td>
</tr>
<tr>
    <td>Pass</td>
    <td><input type="password" name="password" required></td>
</tr>
<tr>
    <td>
        <input type="submit" value="Login">
    </td>
    <td>
        <input type="reset" value="Clear">
    </td>
</tr>
</table>
</form>

<br>
New User, <a href="signup.jsp">SignUp</a>

</center>
</body>
</html>

