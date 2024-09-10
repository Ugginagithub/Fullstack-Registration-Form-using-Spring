<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Record</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(120deg, #e74c3c, #c0392b);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            width: 350px;
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
        }

        .container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #fff;
            font-weight: 600;
            font-size: 24px;
        }

        .container label {
            display: block;
            margin-bottom: 10px;
            font-weight: 500;
        }

        .container input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            color: #333;
        }

        .container input[type="number"]:focus {
            outline: none;
            box-shadow: 0 0 8px rgba(255, 255, 255, 0.5);
        }

        .container input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #e74c3c;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .container input[type="submit"]:hover {
            background-color: #c0392b;
        }

        .container .message {
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
            color: #f1c40f;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Delete Record</h2>
        <form action="./deleteRecord" method="post">
            <label for="id">Enter ID to Delete</label>
            <input type="number" id="id" name="id" required placeholder="Enter ID">

            <input type="submit" value="Delete">
        </form>
        <div class="message">
            Please ensure you have the correct ID before deleting.
        </div>
    </div>
</body>
</html>
