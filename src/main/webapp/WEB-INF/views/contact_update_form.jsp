<%@page import="smartcontactmanagement.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>


<%
	User user = (User)session.getAttribute("currentUser");
	if(user == null){
		response.sendRedirect("login");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>

</head>
<body>
	
	<!-- Navbar1 -->
	<%@ include file="./navbar1.jsp" %>
	
	<!-- form  -->
	<div class="container mt-3" >
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3 ">Update Contact Details</h1>
				
				<form action="${pageContext.request.contextPath }/handleForm" method="post">
				
					<div class="form-group">
						 <input
							type="hidden" class="form-control" id="exampleFormControlInput3"
							name="id" value="${contact.id }" readonly>
					</div>
					
					<div class="form-group">
						 <input
							type="hidden" class="form-control" id="exampleFormControlInput3"
							name="uId" value="${contact.uId }" readonly>
					</div>
					
					<div class="form-group">
						<label for="exampleFormControlInput1">Name</label> <input
							type="text" class="form-control" id="exampleFormControlInput1"
							name="name" value="${contact.name }">
					</div>
					
					
					<div class="form-group">
						<label for="exampleFormControlTextarea1">Number</label>
						<input class="form-control" id="exampleFormControlTextarea1"
							name="number" value="${contact.number }" />
					</div>
					
					<div class="form-group">
						<label for="exampleFormControlInput2">Category</label>
						<select
							type="text" class="form-control" id="exampleFormControlInput2"
							name="category" >
							<option>Relative</option>
							<option>Freind</option>
							<option>Business</option>
							<option>Office</option>
							<option>Other</option>
						</select>
					</div>
					<div class="text-center form-group">
						<a href="${pageContext.request.contextPath }/back" class="btn btn-outline-danger mr-3">Back</a>
						<button class="btn btn-outline-warning">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>