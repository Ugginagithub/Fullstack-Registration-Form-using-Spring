<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(120deg, #2980b9, #8e44ad);
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

        .container input[type="text"],
        .container input[type="number"],
        .container select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            color: #333;
        }

        .container input[type="text"]:focus,
        .container input[type="number"]:focus,
        .container select:focus {
            outline: none;
            box-shadow: 0 0 8px rgba(255, 255, 255, 0.5);
        }

        .container input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .container input[type="submit"]:hover {
            background-color: #3e8e41;
        }

        .gender-container {
            margin-bottom: 20px;
        }

        .gender-container label {
            margin-right: 10px;
            font-weight: normal;
        }

        .gender-container input[type="radio"] {
            margin-right: 5px;
        }

        .container select {
            padding: 10px;
            background-color: rgba(255, 255, 255, 0.8);
            color: #333;
        }

        .container select option {
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registration Form</h2>
        <form action="./formdata" method="post">
            <label for="id">ID</label>
            <input type="number" id="id" name="id" required>

            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>

            <label for="phone">Phone Number</label>
            <input type="number" id="phone" name="phone_number" required>

            <label for="address">Address</label>
            <input type="text" id="address" name="address" required>

            <label>Gender</label>
            <div class="gender-container">
                <label>
                    <input type="radio" name="gender" value="male" required> Male
                </label>
                <label>
                    <input type="radio" name="gender" value="female" required> Female
                </label>
                <label>
                    <input type="radio" name="gender" value="other" required> Other
                </label>
            </div>

            <label for="country">Country</label>
            <select id="country" name="country" required>
                <option value="" disabled selected>Select your country</option>
                <option value="India">India</option>
                <option value="usa">USA</option>
                <option value="canada">Canada</option>
                <option value="uk">UK</option>
            </select>

            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
