<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Запись</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <table class="table">
        <thead>
        <th>Id</th>
        <th>Appointment Date</th>
        <th>Appointment Time</th>
        </thead>
        <c:forEach items="${allAppointments}" var="appointment">
        <tr>
            <td>${appointment.id}</td>
            <td>${appointment.app_date}</td>
            <td>${appointment.app_time}</td>
            <td>
                    <form action="${pageContext.request.contextPath}/news/delete" method="post">
                        <input type="hidden" name="appointmentId" value="${appointment.id}"/>
                        <input type="hidden" name="action" value="deleteAppointment"/>
                        <button class="btn btn-warning" type="submit">Delete</button>
                    </form>

                </c:forEach>
            </td>
    </table>
    <h4><a href="/appointment">Создать запись</a></h4>
    <a href="/">Главная</a>
</div>
</body>
</html>
