<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout</title>
</head>
<body>
	<div align="center">
	<h1 align="center" style="font: normal; font-size: 20px; color: blue;">Provide Address</h1>
		<table>
			<tr>
				<td>
					<form action="${pageContext.request.contextPath}/user/finalize" method="post">
						<label>Address	:    <textarea name="address" rows="3" cols="40" required></textarea></label> <br> <br>
						<div align="center">
							<button>Submit Order</button>
						</div>
					</form>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>