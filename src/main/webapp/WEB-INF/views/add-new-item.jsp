<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-Add New Product</title>
</head>
<body>
	<h1 align="center" style="font: normal; font-size: 30px; color: blue;">Add Product</h1>
	 <div align="center">
    <div align="left" style="display: inline-block; border: thin solid black; padding: 10px;">
      <form action="admin?action=insertproduct" method="post">
        <label style="display: table-cell;">Product Id:</label>
        <input type="text" maxlength="10" name="productId" type="number" readonly value="${productId }" /> <br> <br>
        <label style="display: table-cell;">Name:</label>
        <input type="text" name="productName" required maxlength="50" pattern="^[a-zA-Z]+[a-zA-Z ]*"
          oninvalid="setCustomValidity('Please enter on alphabets only. ')" /><br> <br>
        <label style="display: table-cell;">Cost:</label> <input type="number" step="0.01" min="0.01"
          name="productPrice" required /><br><br>
        <label style="display: table-cell;">Description:</label> <input type="text" name="productDescription"
          maxlength="100" /><br> <br>
        <button>Add</button>
        <br>
      </form>
    </div>
</body>
</html>