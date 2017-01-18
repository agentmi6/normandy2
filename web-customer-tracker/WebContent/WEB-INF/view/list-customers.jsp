<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Customers</title>

<link href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" rel="stylesheet" />
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</div>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
		
		<!--  add button for adding customers -->
		<input class="add-button" type="button" value="Add Customer" onclick="window.location.href='showFormForAdd'; return false;"/>
		
		<!-- add our html table here -->
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
			</tr>
					
			<!-- Loop over and print our customers -->
			<c:forEach var="tempCustomer" items="${customers}">			
				<tr>
					<td>${tempCustomer.firstName}</td>
					<td>${tempCustomer.lastName}</td>
					<td>${tempCustomer.email}</td>
				</tr>
			</c:forEach>			
		</table>
		<br>
		<p>
			<a href="${pageContext.request.contextPath}\normandy\crewmembers">Go to Normandy</a>
		</p>
		
		</div>
	</div>	

</body>
</html>