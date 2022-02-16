<%@page import="smartcontactmanagement.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	User user = (User)session.getAttribute("currentUser");
	if(user == null){
		response.sendRedirect("login");
	}
%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="./base.jsp"%>

</head>
<body>

	<!-- Navbar1 -->
	<%@ include file="./navbar1.jsp" %>


	<div class="container mt-4" >
		<div class="row">
			<div class="col-md-12 ">
				<h1 class="text-center mt-3">Welcome to Contact Management App</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Number</th>
							<th scope="col">Category</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					
						<c:forEach items="${contacts }" var="c">
						<tr class="font-weight-bold">
							<th scope="row">${c.id }</th>
							<td>${c.name }</td>
							<td>${c.number }</td>
							<td class="font-weight-bold">${c.category }</td>
							<td>
								<a href="${pageContext.request.contextPath }/deleteContact/${c.id }" ><i class="fa-solid fa-trash-can text-danger mr-3" Style="font-size:30px;"></i></a>
								<a href="${pageContext.request.contextPath }/updateContact/${c.id }" ><i class="fa-solid fa-pen-to-square text-primary" Style="font-size:30px;"></i></a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="${pageContext.request.contextPath }/addContact" class="btn btn-outline-success">Add Contact</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
