<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" rel="stylesheet"/>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
		<div class="row">
			<h2>Normandy crew members</h2>
			<br> <br>
		</div>
		<div class="row">
			<table class="table table-hover">
				<thead>
					<tr>
						<td>First Name</td>
						<td>Last Name</td>
					</tr>
				</thead>
				<c:forEach var="member" items="${members}">
					<tbody>
						<tr>
							<td>${member.firstName}</td>
							<td>${member.lastName}</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
		<br>
		<p>
			<a href="${pageContext.request.contextPath}\customer\list">Back
				to Customers</a>
		</p>
	</div>


</body>
</html> --%>



<!-- bootstrap layout -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="yyyy" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Crud</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<style>

.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 60px;
	background-color: #f5f5f5;
}

.credits {
	margin-top: 20px !important;
}

</style>

</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="${pageContext.request.contextPath}\" class="navbar-brand">CrudApp</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath}\customer\list">Customers</a></li>
					<li><a
						href="${pageContext.request.contextPath}\normandy\crewmembers">Normandy</a></li>
					<li><a href="${pageContext.request.contextPath}\about">About</a></li>
					<li><a href="${pageContext.request.contextPath}\contact">Contact</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container" style="margin-top: 80px;">
		<div class="row header-normandy">
			<h2>Normandy crew members</h2>
			<img src="${pageContext.request.contextPath}/resources/images/normandy2.jpg" width="1000px" class="img-responsive">
			<br> <br>
			 <input class="btn btn-primary" type="button"
				value="Add Member"
				onclick="window.location.href='memberAddForm'; return false;" />
		</div>
		<br>
		<br>
		<div class="row">
			<table class="table table-hover">
				<thead>
					<tr>
						<td>First Name</td>
						<td>Last Name</td>
					</tr>
				</thead>
				<c:forEach var="member" items="${members}">
					<tbody>
						<tr>
							<td>${member.firstName}</td>
							<td>${member.lastName}</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>			
		<p>
			<a href="${pageContext.request.contextPath}\customer\list">Go to Customers</a>
		</p>					
	</div>
	<footer class="footer">
		<div class="container">
			<p class="text-muted credits">&copy; ${year} CRUD application</p>
		</div>
	</footer>
</body>
</html>

