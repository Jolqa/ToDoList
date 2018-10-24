<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<fmt:setLocale value="${cookie.lang.value}"/>
<fmt:setBundle basename="labels" var="labels" />
<fmt:setBundle basename="language" var="language"/>
<html>
<head>
</head>
<body>
<a class="btn btn-primary" href=index.jsp><fmt:message key="task.main" bundle="${labels}"/></a>
<%--<button type="button" class="btn btn-primary"><a href=index.jsp><fmt:message key="taskDto.main"/> </a></button>--%>
<a  class="btn btn-success" href=addTask.jsp><fmt:message key="task.new" bundle="${labels}"/></a>
<%--<button type="button" class="btn btn-success"><a href=addTask.jsp><fmt:message key="taskDto.new"/></a></button>--%>
<a class="btn btn-warning" href=displayTasks.jsp><fmt:message key="task.all" bundle="${labels}"/></a>
<%--<button type="button" class="btn btn-warning"><a href=displayTasks.jsp>Wyświetl zadania</a></button>--%>
<%--<button type="button" class="btn btn-warning"><a href=displayTasks.jsp><fmt:message key="taskDto.all"/></a></button>--%>

</body>
</html>
