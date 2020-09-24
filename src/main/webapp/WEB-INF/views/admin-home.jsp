<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
</head>
<body>
	<h1>Select an option</h1>
	<ul>
		<security:authorize access="hasRole('ADMIN')">			
			<li><a href="${pageContext.request.contextPath}/admin/product-entry">Add Product</a></li>
			<li><a href="${pageContext.request.contextPath}/admin/product-list">View Products</a></li>
		</security:authorize>

	</ul>
</body>
</html>