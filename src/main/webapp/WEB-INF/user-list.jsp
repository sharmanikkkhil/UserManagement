<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<style>
    body {
        background: linear-gradient(to right, #003366, #0066cc);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        color: #fff;
    }

    h1 {
        text-align: center;
        color: #fff;
        margin-top: 30px;
        font-size: 36px;
    }
    
    .btn {
        display: inline-block;
        padding: 10px 20px;
        color: #fff;
        background: #0066cc;
        border: none;
        border-radius: 6px;
        text-decoration: none;
        transition: background 0.3s;
        margin: 20px;
        font-size: 16px;
        text-align: center;
    }
    
    .btn:hover {
        background: #004080;
    }
    
    table {
        width: 90%;
        margin: 20px auto;
        border-collapse: collapse;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    
    th, td {
        padding: 12px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }
    
    th {
        background: #004080;
        color: #fff;
    }
    
    th:first-child {
        border-top-left-radius: 8px;
    }
    
    th:last-child {
        border-top-right-radius: 8px;
    }
    
    td {
        background: rgba(255, 255, 255, 0.1);
        color: #fff;
    }
    
    tr:last-child td {
        border-bottom: none;
    }
    
    a {
        color: #66ccff;
        text-decoration: none;
        transition: color 0.3s;
    }
    
    a:hover {
        color: #003366;
    }
    
    .actions {
        text-align: center;
    }
    
    .action-btn {
        display: inline-block;
        padding: 6px 12px;
        color: #fff;
        border: none;
        border-radius: 4px;
        text-decoration: none;
        font-size: 14px;
        margin: 0 5px;
        cursor: pointer;
        transition: background 0.3s, transform 0.1s;
    }
    
    .action-btn.delete {
        background: #e74c3c;
    }
    
    .action-btn.delete:hover {
        background: #c0392b;
        transform: scale(1.05);
    }
    
    .action-btn.edit {
        background: #2ecc71;
    }
    
    .action-btn.edit:hover {
        background: #27ae60;
        transform: scale(1.05);
    }
</style>
</head>
<body>

<h1>User List</h1>
<hr>
<a class="btn" href="add" role="button">Add User</a>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>City</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var='u' items='${ulist}'>
            <tr>
                <td><c:out value='${u.id}'/></td>
                <td><c:out value='${u.name}'/></td>
                <td><c:out value='${u.email}'/></td>
                <td><c:out value='${u.city}'/></td>
                <td class="actions">
                    <a class="action-btn delete" href="delete/${u.id}">Delete</a>
                    <a class="action-btn edit" href="edit/${u.id}">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
