<%@ page import="dto.TaskDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setLocale value="${param.lang}"/>
<fmt:setBundle basename="labels"/>

<html>
<%
    String title = "Dodaj kolejne zadanie";
    List<TaskDto> taskDtos = (List<TaskDto>) session.getAttribute("taskDtos");
    if (taskDtos == null || taskDtos.isEmpty()) {
        title = "Dodaj pierwsze zadanie!";
        taskDtos = new ArrayList<>();
        session.setAttribute("taskDtos", taskDtos);
    }
    ;
%>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="css/style.css rel=stylesheet">

    <title><%out.print(title);%></title>

</head>


<body>
<div class="container">
<div class="alert alert-success" role="alert">
    <h1><%out.print(title);%></h1>
</div>
<jsp:include page="header.jsp"/>
<br>
<br/>

<form action="displayTasks.jsp" method="POST">

    <%-- <label for="taskName">zadanie</label>
    <input
            type="text" id="taskName"
            name="taskName"/><br/>
            ograniczam taskDto do jednego pola w formularzu--%>

    <label for="newTask">Nowe zadanie</label>
    <input
            type="text" id="newTask"
            name="newTask"/><br/>
    <br>
    <br/>
    <input type="submit" value="Dodaj"/>

    <%-- <% String newTask = request.getParameter("newTask");
        if (newTask != null && !newTask.isEmpty()) {
            TaskDto taskDto = new TaskDto();
            taskDto.setDescription(newTask);
            taskDtos.add(taskDto); }
    %> --%>
</div>
</form>
</body>
</html>
