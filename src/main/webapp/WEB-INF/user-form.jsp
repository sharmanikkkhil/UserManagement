<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Form</title>
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

    .form-container {
        background: rgba(255, 255, 255, 0.9);
        border-radius: 12px;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        margin: 30px auto;
        padding: 30px;
        width: 30%;
        max-width: 600px;
    }

    h2 {
        text-align: center;
        margin-top: 15px;
        margin-bottom: 25px;
        font-size: 28px;
        color: #003366;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        color: #333;
    }

    .form-group input {
        width: calc(100% - 25px);
        padding: 12px;
        border: 1px solid #ddd;
        border-radius: 6px;
        font-size: 16px;
        background: #fff;
    }

    .form-group input:focus {
        border-color: #0066cc;
        outline: none;
    }

    .btn {
        width: 100px;
        padding: 12px;
        background: #2a5298;
        border: none;
        border-radius: 6px;
        color: white;
        font-size: 18px;
        font-weight: bold;
        cursor: pointer;
        transition: background 0.3s, transform 0.1s;
        margin: 10px auto;
        margin-top: 35px;
        display: block;
    }

    .btn:hover {
        background: #004080;
        transform: scale(1.05);
    }

    /* Media Queries */
    @media (max-width: 768px) {
        .form-container {
            width: 80%;
            padding: 20px;
        }

        h1 {
            font-size: 28px;
        }

        h2 {
            font-size: 24px;
        }

        .btn {
            width: 80%;
            font-size: 16px;
        }
    }

    @media (max-width: 480px) {
        .form-container {
            width: 90%;
            padding: 15px;
        }

        h1 {
            font-size: 24px;
        }

        h2 {
            font-size: 20px;
        }

        .btn {
            width: 100%;
            font-size: 14px;
        }
    }
</style>
</head>
<body>

<h1>User Management</h1>
<hr>
<div class="form-container">
    <c:if test="${user != null}">
        <form action="${pageContext.request.contextPath}/update" method="post">
    </c:if>
    <c:if test="${user == null}">
        <form action="insert" method="post">
    </c:if>
        <h2>
            <c:if test="${user.id != 0}">
                Edit User
            </c:if>
            <c:if test="${user.id == 0}">
                Add New User
            </c:if>
        </h2>
        <c:if test="${user.id != null}">
            <input type="hidden" name="id" value="${user.id}">
        </c:if>
        <div class="form-group">
            <label>User Name</label>
            <input type="text" name="name" value="${user.name}" required="required">
        </div>
        <div class="form-group">
            <label>User Email</label>
            <input type="text" name="email" value="${user.email}">
        </div>
        <div class="form-group">
            <label>User City</label>
            <input type="text" name="city" value="${user.city}">
        </div>
        <button type="submit" class="btn">Save</button>
    </form>
</div>
</body>
</html>
