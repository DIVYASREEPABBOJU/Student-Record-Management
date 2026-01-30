<!DOCTYPE html>
<html>
<head>
<title>Signup</title>
<style>
table {
    border: 2px solid black;
    padding: 10px;
}
td {
    padding: 5px;
    font-size: 18px;
}
input, textarea {
    width: 250px;
}
</style>
</head>

<body>
<center>

<form action="SignupServlet" method="post">
<table>
<tr>
    <td>FName</td>
    <td><input type="text" name="fname" required></td>
</tr>
<tr>
    <td>LName</td>
    <td><input type="text" name="lname" required></td>
</tr>
<tr>
    <td>Email</td>
    <td><input type="email" name="email" required></td>
</tr>
<tr>
    <td>Pass</td>
    <td><input type="password" name="password" required></td>
</tr>
<tr>
    <td>Mobile</td>
    <td><input type="text" name="mobile" required></td>
</tr>
<tr>
    <td>Address</td>
    <td><textarea name="address" rows="3"></textarea></td>
</tr>
<tr>
    <td>
        <input type="submit" value="Register">
    </td>
    <td>
        <input type="reset" value="Clear">
    </td>
</tr>
</table>
</form>

<br>
Existing User, <a href="login.jsp">SignIn</a>

</center>
</body>
</html>

