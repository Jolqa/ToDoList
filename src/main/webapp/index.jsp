<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<fmt:setLocale value="${param.lang}"/>
<fmt:setBundle basename="labels"/>

<%
    String prefLang = "";
    Cookie cookie =
            new Cookie("preferredLang",prefLang );
    cookie.setMaxAge(60 * 60 * 24 * 365);
    response.addCookie(cookie);
%>

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
<fmt:setLocale value="${cookie.preferredLang.getValue()}"/>
<fmt:setBundle basename="language"/>

<a onclick="${cookie.preferredLang.setValue("pl_PL")}"  href="index.jsp?lang=pl_PL"><fmt:message key="language.polish"/></a> |
<a onclick="${cookie.preferredLang.setValue("en_GB")}" href="index.jsp?lang=en_GB"><fmt:message key="language.english"/></a> |
<a href="index.jsp?lang=de_DE"><fmt:message key="language.german"/></a>


<fmt:setBundle basename="labels"/>

<br>
<h1 class="alert alert-primary" role="alert">

    <fmt:message key="application.name" var="appName"/>


</h1>
<div>
    <jsp:include page="header.jsp"/>
</div>


<script src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
<script src="webjars/popper.js/1.14.4/popper.min.js"></script>
<script src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<div/>
</body>
</html>
