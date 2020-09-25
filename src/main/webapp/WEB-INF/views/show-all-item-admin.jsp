<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Products</title>

</head>
<body>
	<nav>
		<a href="${pageContext.request.contextPath}/admin/home">Home</a>
		<a href="${pageContext.request.contextPath}/admin/product-entry">Add Product</a> 
	</nav>
	<h1>All Products</h1>
	<h1 align="center"	style="font: normal; font-size: 30px; color: blue;">Corona Kit-All Products(Admin)</h1>
	<c:choose>
		<c:when test="${products==null || products.isEmpty() }">
			<p style="font: normal; font-size: 30px; color: red;">No products found. Add some products!!</p>
		</c:when>
		<c:otherwise>
			<div align="center">
				<div style="display: inline-block; border: thin solid black; padding: 10px;">
					<table border="2" cellspacing="2px" cellpadding="2px">
						<thead>
							<tr style="color: brown; font-weight: bold">
								<td>Product Id</td>
								<td>Name</td>
								<td>Description</td>
								<td>cost</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${products }" var="product">
								<tr>
									<td>${product.id }</td>
									<td>${product.productName }</td>
									<td>${product.productDescription }</td>
									<td>${product.cost }</td>
									<td><a href="${pageContext.request.contextPath}/admin/product-delete/${product.id }">Delete</a></td>
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