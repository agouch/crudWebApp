<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Form</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f9f9f9;
                padding: 40px;
            }

            h1 {
                text-align: center;
                color: #333;
            }

            form {
                background-color: white;
                max-width: 500px;
                margin: 30px auto;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            }

            label {
                display: block;
                margin-top: 15px;
                font-weight: bold;
                color: #555;
            }

            input[type="text"],
            input[type="email"] {
                width: 100%;
                padding: 10px;
                margin-top: 5px;
                border: 1px solid #ccc;
                border-radius: 6px;
                box-sizing: border-box;
            }

            input[type="submit"] {
                margin-top: 20px;
                padding: 10px 20px;
                background-color: #28a745;
                color: white;
                border: none;
                border-radius: 6px;
                cursor: pointer;
                font-size: 16px;
            }

            input[type="submit"]:hover {
                background-color: #218838;
            }

            a {
                display: block;
                text-align: center;
                margin-top: 20px;
                color: white;
                background-color: #007bff;
                padding: 10px;
                border-radius: 6px;
                text-decoration: none;
                font-size: 14px;
            }

            a:hover {
                background-color: #0056b3;
            }
        </style>
</head>
<body>
    <h1>User Form</h1>
    <form action="insert" method="post">
        <input type="hidden" name="id" value="${user.id}" />
        <label>Name:</label>
        <input type="text" name="name" value="${user.name}" /><br/>
        <label>Email:</label>
        <input type="text" name="email" value="${user.email}" /><br/>
        <label>Country:</label>
        <input type="text" name="country" value="${user.country}" /><br/>
        <input type="submit" value="Save" />
    </form>
</body>
</html>-->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Form</title>
</head>
<body>
    <h1>${user == null ? "Create New User" : "Edit User"}</h1>
    <form action="${user == null ? 'insert' : 'update'}" method="post">
        <input type="hidden" name="id" value="${user != null ? user.id : ''}" />
        <label>Name:</label>
        <input type="text" name="name" value="${user != null ? user.name : ''}" required/><br/>
        <label>Email:</label>
        <input type="email" name="email" value="${user != null ? user.email : ''}" required/><br/>
        <label>Country:</label>
        <input type="text" name="country" value="${user != null ? user.country : ''}" required/><br/>
        <input type="submit" value="${user == null ? 'Save' : 'Update'}" />
    </form>
    <a href="list">Back to User List</a>
</body>
</html>