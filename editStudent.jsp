<%
String role = (String) session.getAttribute("role");
if (role == null || !role.equals("admin")) {
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Edit Student</title>
<style>
body {
    margin: 0;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: Arial;
}
.container {
    border: 2px solid black;
    padding: 30px;
}
table td {
    padding: 8px;
}
input {
    width: 220px;
    height: 28px;
}
</style>
</head>

<body>

<div class="container">
<h2>Edit Student</h2>

<form action="UpdateStudentServlet" method="post">
<input type="hidden" name="id" value="<%= request.getAttribute("id") %>">

<table>
<tr>
<td>Name</td>
<td><input type="text" name="name"
 value="<%= request.getAttribute("name") %>" required></td>
</tr>

<tr>
<td>Email</td>
<td><input type="email" name="email"
 value="<%= request.getAttribute("email") %>" required></td>
</tr>

<tr>
<td>Course</td>
<td><input type="text" name="course"
 value="<%= request.getAttribute("course") %>" required></td>
</tr>

<tr>
<td>Year</td>
<td><input type="number" name="year"
 value="<%= request.getAttribute("year") %>" required></td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" value="Update Student">
</td>
</tr>
</table>
</form>

<br>
<a href="adminDashboard.jsp">Back</a>
</div>

</body>
</html>
