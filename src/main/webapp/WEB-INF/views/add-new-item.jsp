<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-Add New Product</title>
</head>
<body>
  <h1 align="center" style="font: normal; color: blue;">Add Product</h1>
  <div align="center">
    <div align="left" style="display: inline-block; border: thin solid black; padding: 10px;">
      <form:form action="${pageContext.request.contextPath}/admin/product-save" method="post" modelAttribute="product">
        <!-- <div>
          <form:label path="id">Product Id:</form:label>
          <form:input type="number" path="id"/>
          <form:errors path="id"/>
        </div> --> 
        <div>
          <form:label path="productName">Name:</form:label>
          <form:input type="text" path="productName" required="required" maxlength="50" />
          <form:errors path="productName"/>
        </div>
        <div>
          <form:label path="cost">Cost:</form:label>
          <form:input type="number" path="cost" step="1" min="1" required="required" />
          <form:errors path="cost"/>
        </div>
        <div>
          <form:label path="productDescription">Description:</form:label>
          <form:input type="text" path="productDescription" maxlength="100" />
          <form:errors path="productDescription"/>
        </div>
        <button>Add</button>
        <br>
      </form:form>
    </div>
  </div>
</body>
</html>