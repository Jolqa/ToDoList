<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<fmt:setLocale value="${param.lang}"/>
<fmt:setBundle basename="labels"/>
<html>
<head>
</head>
<body>
<a class="btn btn-primary" href=index.jsp><fmt:message key="task.main"/></a>
<%--<button type="button" class="btn btn-primary"><a href=index.jsp><fmt:message key="task.main"/> </a></button>--%>
<a  class="btn btn-success" href=addTask.jsp><fmt:message key="task.new"/></a>
<%--<button type="button" class="btn btn-success"><a href=addTask.jsp><fmt:message key="task.new"/></a></button>--%>
<a class="btn btn-warning" href=displayTasks.jsp><fmt:message key="task.all"/></a>
<%--<button type="button" class="btn btn-warning"><a href=displayTasks.jsp>Wyświetl zadania</a></button>--%>
<%--<button type="button" class="btn btn-warning"><a href=displayTasks.jsp><fmt:message key="task.all"/></a></button>--%>

</body>
</html>
