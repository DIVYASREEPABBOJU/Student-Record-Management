<%
String role = (String) session.getAttribute("role");
if (role == null || !role.equals("user")) {
    response.sendRedirect("login.jsp");
}
%>

<h2>User Dashboard</h2>
<p>Welcome User</p>
<a href="LogoutServlet">Logout</a>
