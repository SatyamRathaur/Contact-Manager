<%@page import="smartcontactmanagement.model.User"%>
<%@ page isELIgnored="false" %>

<%-- <%
	User user = (User)session.getAttribute("currentUser");
	if(user == null){
		response.sendRedirect("login");
	}
%> --%>

<!-- Navbar start --> 
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Contact Manager Logo</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath }/">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Contact us</a>
                </li>


            </ul>
            <div class="navbar-nav  ">
            	 <a class="nav-link active" href="${pageContext.request.contextPath }/contacts/${user.userId}">View Contacts</a>
                <a class="nav-link active" href="${pageContext.request.contextPath }/logout">Logout</a>
                
            </div>
        </div>
    </nav>
	
	<!-- Navbar end -->