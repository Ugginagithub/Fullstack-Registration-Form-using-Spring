<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Data</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e8f5e9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        table {
            border-collapse: collapse;
            width: 90%;
            max-width: 900px;
            margin: auto;
            background-color: #ffffff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        table, th, td {
            border: none;
        }

        th, td {
            padding: 15px;
            text-align: left;
            color: #333;
        }

        th {
            background-color: #43a047;
            color: white;
            text-transform: uppercase;
            letter-spacing: 0.1em;
            font-weight: 600;
        }

        tr {
            transition: background-color 0.3s ease;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #dcedc8;
        }

        td {
            border-bottom: 1px solid #ddd;
        }

        .book-container {
            perspective: 1000px;
        }

        .table-wrapper {
            margin: 20px 0;
        }

    </style>
</head>
<body>
    <div class="book-container">
        <div class="table-wrapper">
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Phone Number</th>
                    <th>Address</th>
                    <th>Gender</th>
                    <th>Country</th>
                </tr>
                <c:forEach items="${data}" var="data">
                    <tr>
                        <td>${data.id}</td>
                        <td>${data.name}</td>
                        <td>${data.phone_number}</td>
                        <td>${data.address}</td>
                        <td>${data.gender}</td>
                        <td>${data.country}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>
