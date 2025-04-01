<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f9f9f9;
                margin: 40px;
            }

            h1 {
                color: #333;
                text-align: center;
            }

            a {
                text-decoration: none;
                color: white;
                background-color: #4CAF50;
                padding: 8px 14px;
                border-radius: 5px;
                margin-right: 8px;
                font-size: 14px;
            }

            a:hover {
                background-color: #45a049;
            }

            table {
                width: 90%;
                margin: 20px auto;
                border-collapse: collapse;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                background-color: white;
            }

            th, td {
                padding: 12px 16px;
                border: 1px solid #ddd;
                text-align: left;
            }

            th {
                background-color: #f2f2f2;
            }

            td a {
                background-color: #2196F3;
                margin-right: 5px;
            }

            td a:hover {
                background-color: #0b7dda;
            }

            .create-btn {
                display: block;
                width: fit-content;
                margin: 0 auto 20px auto;
                background-color: #28a745;
            }

            .create-btn:hover {
                background-color: #218838;
            }
        </style>
</head>
<body>
    <h1>User List</h1>
    <a href="new">Create New User</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <td>
                    <a href="edit?id=${user.id}">Edit User</a>
                    <a href="delete?id=${user.id}">Delete User</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
