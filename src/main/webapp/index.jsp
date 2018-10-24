<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<fmt:setLocale value="${cookie.lang.value}"/>
<fmt:setBundle basename="labels" var="labels" />
<fmt:setBundle basename="language" var="language"/>

<%--@elvariable id="task" type="todo.dto.TaskDto" --%>
<%--@elvariable id="tasks" type="java.util.List"--%>

<%--<%
    Cookie[] cookies = request.getCookies();
    boolean isExist = false;
    Cookie cookie = null;
    if (cookies != null) {
        for (Cookie c : cookies) {
            if (c.getName().equals("language")) {
                isExist = true;
            }
        }
    }
    if (isExist) {
        String langParam = request.getParameter("lang");
        if (langParam != null && !langParam.isEmpty()) {
            cookie = new Cookie("language", request.getParameter("lang"));
            response.addCookie(cookie);
            response.sendRedirect("index.jsp");
        }
    } else {
        String locale = request.getLocale().toLanguageTag();
        cookie = new Cookie("language", locale);
        response.addCookie(cookie);
        response.sendRedirect("index.jsp");
    }
%>--%>

<html>
<head>
    <title><fmt:message key="application.name"/></title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" type="text/css">
</head>

<body>
<div class="container">
    <a href="language?lang=pl_PL"><fmt:message key="language.polish" bundle="${language}"/></a> |
    <a href="language?lang=en_GB"><fmt:message key="language.english" bundle="${language}"/></a> |
    <a href="language?lang=de_DE"><fmt:message key="language.german" bundle="${language}"/></a>


    <br>
    <h1 class="alert alert-primary" role="alert">
        <fmt:message key="application.name" bundle="${labels}"/>
    </h1>
    <div>
        <jsp:include page="header.jsp"/>
    </div>

    <script src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
    <script src="webjars/popper.js/1.14.4/popper.min.js"></script>
    <script src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <div/>
</body>

