<%
String role = (String) session.getAttribute("role");
if (role == null || !role.equals("admin")) {
    response.sendRedirect("login.jsp");
}
%>

<h2>Add Student</h2>

<form action="AddStudentServlet" method="post">
Name: <input type="text" name="name" required><br><br>
Email: <input type="email" name="email" required><br><br>
Course: <input type="text" name="course" required><br><br>
Year: <input type="number" name="year" required><br><br>

<input type="submit" value="Add Student">
</form>

<a href="adminDashboard.jsp">Back</a>
