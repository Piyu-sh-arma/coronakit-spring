<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-Summary</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<h1>Order Summary</h1>
	<c:choose>
		<c:when test="${orderedproducts==null || orderedproducts.isEmpty() }">
			<p>No products found!!</p>
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
				<div>
					<table>
						<thead>
							<tr>
								<td>Name</td>
								<td>Description</td>
								<td>Unit Price</td>
								<td>Quantity</td>
								<td>Total</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${orderedproducts }" var="product">
								<tr>
									<td>${product.productName }</td>
									<td>${product.productDescription }</td>
									<td>${product.cost }</td>
									<c:choose>
										<c:when test="${orderDetils[product.id]==null}">
											<td>0</td>
											<td>0</td>
										</c:when>
										<c:otherwise>
											<td>${orderDetils[product.id].quantity}</td>
											<td>${orderDetils[product.id].amount}</td>
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