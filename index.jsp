<%@ page import="java.util.ArrayList, com.student.Student" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Record Management</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
        }

        .container {
            width: 600px;
            margin: 40px auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 6px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
        }

        .form-group {
            text-align: left;   /* 👈 LEFT ALIGN LABELS */
            margin-bottom: 10px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 4px;
        }

        input {
            width: 100%;
            padding: 6px;
        }

        button {
            margin-top: 12px;
            padding: 6px 14px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }

        hr {
            margin: 25px 0;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Add Student</h2>

    <form action="student" method="post">
        <input type="hidden" name="action" value="add">

        <div class="form-group">
            <label>ID</label>
            <input type="number" name="id" required>
        </div>

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" required>
        </div>

        <div class="form-group">
            <label>Age</label>
            <input type="number" name="age" required>
        </div>

        <div class="form-group">
            <label>Department</label>
            <input type="text" name="department" required>
        </div>

        <button type="submit">Add Student</button>
    </form>

    <hr>

    <h2>Student List</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Department</th>
            <th>Action</th>
        </tr>

        <%
            ArrayList<Student> list =
                (ArrayList<Student>) request.getAttribute("students");

            if (list != null) {
                for (Student s : list) {
        %>
        <tr>
            <td><%= s.id %></td>
            <td><%= s.name %></td>
            <td><%= s.age %></td>
            <td><%= s.department %></td>
            <td>
                <form action="student" method="post" style="margin:0;">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="id" value="<%= s.id %>">
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>

</div>

</body>
</html>


