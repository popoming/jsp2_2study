<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<fmt:setBundle var="message" basename="resource.message" />

<<fmt:message bundle="${message}" key="TITLE" var="title"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
</head>
<body>

<fmt:message bundle="${message}" key="GREETING" />
<br/>
<c:if test="${! empty param.id}">
<fmt:message bundle="${message}" key="VISITOR">
	<fmt:param value="${param.id}" />
</fmt:message>
</c:if>

</body>
</html>