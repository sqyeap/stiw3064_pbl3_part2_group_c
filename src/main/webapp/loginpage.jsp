
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="stylesheet.css"%></style>
<html>
<head>
    <title>UUM OL (G3) - Login Page</title>
</head>
<body>
<header class="loginHeader">
    <p>
        <%= "UUM Online Learning" %>
        <a href="mainpage.jsp" type="submit" class="buttonLogin">Login</a>
    </p>
</header>
<div style="display: flex; justify-content: center">
    <p>
        <%= "Login Page of UUM Online Learning" %>
    </p>
</div>

<script>
    localStorage.setItem("checkSubmit",0);
    var badgeNumber =3;
    localStorage.setItem("badgeNumber",badgeNumber);

</script>
</body>
</html>
