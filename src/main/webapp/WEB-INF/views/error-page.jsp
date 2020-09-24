<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Un-Authorized Access...</h1>
<a href="${pageContext.request.contextPath}/">HOME</a>
<security:authorize access="hasRole('ADMIN')">
	<h1>ADMIN User</h1>
</security:authorize>
<security:authorize access="hasRole('USER')">
	<h1>Normal User</h1>
</security:authorize>
</body>
</html>