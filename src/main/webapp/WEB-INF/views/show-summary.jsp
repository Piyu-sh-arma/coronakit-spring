<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-Summary</title>
</head>
<body>
	
	<h1 align="center" style="font: normal; font-size: 20px; color: blue;">Order Summary</h1>
	<c:choose>
		<c:when test="${products==null || products.isEmpty() }">
			<p style="font: normal; font-size: 30px; color: red;">No products found!!</p>
		</c:when>
		<c:otherwise>
			<div align="center">
				<div>
					<table>
						<tr>
							<td>Address</td>
							<td>Final Amount</td>
						</tr>
						<tr>
							<td>${address}</td>
							<td>${totalAmount }</td>
						</tr>
					</table>
				</div>
				<div style="display: inline-block; border: thin solid black; padding: 10px;">
						<table border="1" cellspacing="5px" cellpadding="5px">
							<thead>
								<tr style="color: brown; font-weight: bold">
									<td>Name</td>
									<td>Description</td>
									<td>Unit Price</td>
									<td>Quantity</td>
									<td>Total</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${products }" var="product">
									<tr>
										<td>${product.productName }</td>
										<td>${product.productDescription }</td>
										<td>${product.cost }</td>
										<c:choose>
											<c:when test="${cart[product.id]==null}">
												<td>0</td>
												<td>0</td>
											</c:when>
											<c:otherwise>
											<td>${cart[product.id].quantity}</td>
											<td>${cart[product.id].amount}</td>
											</c:otherwise>
										</c:choose>
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