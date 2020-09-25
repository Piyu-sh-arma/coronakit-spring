<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-All Products</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<hr />

	<h1 align="center" style="font: normal; font-size: 20px; color: blue;">Step-2 : Select Products</h1>
	<c:choose>
		<c:when test="${products==null || products.isEmpty() }">
			<p style="font: normal; font-size: 30px; color: red;">No products found!!</p>
		</c:when>
		<c:otherwise>
			<div align="center">
				<div style="display: inline-block; border: thin solid black; padding: 10px;">
						<table border="1" cellspacing="5px" cellpadding="5px">
							<thead>
								<tr style="color: brown; font-weight: bold">
									<td>Name</td>
									<td>Description</td>
									<td>Unit Price</td>
									<td></td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${products }" var="product">
									<tr>
										<td>${product.productName }</td>
										<td>${product.productDescription }</td>
										<td>${product.cost }</td>
										<td><a href="${pageContext.request.contextPath}/user/add-to-cart/${product.id }">Add</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>