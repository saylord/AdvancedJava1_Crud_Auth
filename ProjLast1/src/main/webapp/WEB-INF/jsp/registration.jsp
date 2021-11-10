<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Регистрация</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>

<body>
<div class="container col-8">
    <form:form method="POST" modelAttribute="userForm">
        <h2>Регистрация</h2>
        <div>
            <form:input type="text" path="username" placeholder="Username"
                        autofocus="true" class="form-control mt-3"></form:input>
            <form:errors path="username"></form:errors>
                ${usernameError}
        </div>
        <div>
            <form:input type="password" path="password" placeholder="Password" class="form-control mt-3"></form:input>
        </div>
        <div>
            <form:input type="password" path="passwordConfirm"
                        placeholder="Confirm your password" class="form-control mt-3"></form:input>
            <form:errors path="password"></form:errors>
                ${passwordError}
        </div>
        <button type="submit" class="btn btn-info mt-3">Зарегистрироваться</button>
    </form:form>
    <a href="/">Главная</a>
</div>
</body>
</html>