<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="dto.TaskDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setLocale value="${cookie.lang.value}"/>
<fmt:setBundle basename="labels" var="labels" />
<fmt:setBundle basename="language" var="language"/>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="css/style.css rel=stylesheet">
    <title><fmt:message key="task.all"  bundle="${labels}"/></title>
</head>
<%
    // Get session creation time.
    Date createTime = new Date(session.getCreationTime());
    // Get last access time of this Webpage.
    Date lastAccessTime = new Date(session.getLastAccessedTime());%>

<%
    List<TaskDto> taskDtos = (List<TaskDto>) session.getAttribute("taskDtos");
    if (taskDtos == null && taskDtos.isEmpty()) {
        taskDtos = new ArrayList<>();
        session.setAttribute("taskDtos", taskDtos);
    }
%>

<body>
<div class="container">
    <jsp:include page="header.jsp"/>

    <h1 class="alert alert-warning" role="alert">
        Lista zadań:</h1>
    <br>
    <%-- <%= "Czas otwarcia sesji " + createTime %> <br>&lt;%&ndash;//w expresion można wyświetlić liste?&ndash;%&gt;--%>
    <h4 class="alert alert-warning" role="alert">
        <%--<c:if test="${taskDtos.isEmpty()}">
            Brak zadań do wykonania
        </c:if>--%>


        <ol>
            <c:if test="${!empty param.newTask && taskDtos.add(Task.create(param.newTask))}"> <%-- ***o co w tym chodzi***--%>
                <c:redirect url="displayTasks.jsp"/>
            </c:if>

            <c:if test="${!empty param.id}"> <%-- ***co to robi --%>
                <%
                    int id = Integer.valueOf(request.getParameter("id"));
                    taskDtos.remove(id);
                %>
                <c:redirect url="displayTasks.jsp"/>
            </c:if>


            <%--@elvariable id="taskDto" type="pl.sdacademy.todo.dto.Task"--%>
            <c:forEach var="taskDto" items="${sessionScope['taskDtos']}">

                <c:url var="deleteUrl" value="displayTasks.jsp">  <%-- zmieniam z pliku index na displayTasks i zadziałało --%>

                    <c:param name="id" value="${taskDtos.indexOf(taskDto)}"/>
                </c:url>

                <li>${taskDto.getDescription()} <a href="${deleteUrl}"> <fmt:message key="task.delete"/> </a></li>

            </c:forEach>
        </ol>

        <c:if test="${taskDtos.isEmpty()}">
            <fmt:message key="task.empty"  bundle="${labels}" />
        </c:if>


        <%--  <%
              if (taskDtos.isEmpty()) {
                  out.println("Brak zadań do wykonania");
              }
          %>--%>

    </h4>
    <div/>
</body>
</html>


zapis w sesji<br>
pobieram z sesji liste <br>
jesli nie istnieje zapisuje w seseji <br>
jelsli istnieje wyswiltlan <br>
sesion get attribute <br>
<br>
do bazy danych mozna dodac przes skryptlet