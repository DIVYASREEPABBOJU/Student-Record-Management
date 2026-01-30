<%@ page import="java.sql.*" %>
<%@ page import="com.student.db.DBConn" %>

<%
String role = (String) session.getAttribute("role");
String user = (String) session.getAttribute("username");

if (role == null || !role.equals("admin")) {
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>

<style>
body {
    margin: 0;
    font-family: Arial;
    background-color: #f5f5f5;
}

/* Header */
.header {
    text-align: right;
    padding: 15px 30px;
    font-size: 16px;
}

/* Center layout */
.center-wrapper {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 30px;
}

/* Box */
.box {
    border: 3px solid black;
    padding: 25px 35px;
    background-color: white;
    margin-bottom: 30px;
}

h2, h3 {
    text-align: center;
}

table {
    border-collapse: collapse;
}

th, td {
    border: 2px solid black;
    padding: 8px 12px;
    text-align: center;
}

input {
    width: 200px;
    height: 28px;
}
</style>

</head>
<body>

<!-- HEADER -->
<div class="header">
    Welcome <b><%= user %></b>,
    <a href="LogoutServlet">Logout</a>
</div>

<!-- CENTER CONTENT -->
<div class="center-wrapper">

    <!-- ADD STUDENT -->
    <div class="box">
        <h3>Add Student</h3>

        <form action="AddStudentServlet" method="post">
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="email" name="email" required></td>
            </tr>
            <tr>
                <td>Course</td>
                <td><input type="text" name="course" required></td>
            </tr>
            <tr>
                <td>Year</td>
                <td><input type="number" name="year" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Add Student">
                </td>
            </tr>
        </table>
        </form>
    </div>

    <!-- STUDENT LIST -->
    <div class="box">
        <h3>Student List</h3>

        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Course</th>
                <th>Year</th>
                <th>Action</th>
            </tr>

        <%
        Connection con = DBConn.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM students");

        while (rs.next()) {
        %>
            <tr>
                <td><%= rs.getInt("student_id") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("email") %></td>
                <td><%= rs.getString("course") %></td>
                <td><%= rs.getInt("year") %></td>
                <td>
                    <a href="EditStudentServlet?id=<%= rs.getInt("student_id") %>">Edit</a> |
                    <a href="DeleteStudentServlet?id=<%= rs.getInt("student_id") %>"
                       onclick="return confirm('Are you sure you want to delete?');">
                       Delete
                    </a>
                </td>
            </tr>
        <% } %>

        </table>
    </div>

</div>

</body>
</html>
