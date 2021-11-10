<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10.11.2021
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Создание записи на прием</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>

<body>
<div class="container col-8">
    <form:form method="POST" modelAttribute="AppointmentForm">
        <h2>Создание записи на прием</h2>
        <div>
            <form:input type="date" path="app_date" placeholder="AppointmentDate"
                        class="form-control mt-3"></form:input>
        </div>
        <div>
            <form:input type="text" path="app_time" placeholder="AppointmentTime" class="form-control mt-3"></form:input>
        </div>
        <button type="submit" class="btn btn-info mt-3">Создать</button>
    </form:form>
    <a href="/">Главная</a>
</div>
</body>
</html>
