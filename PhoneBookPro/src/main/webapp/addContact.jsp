<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>

</head>
<body>
<%@include file="component/navbar.jsp" %>

<%
if(user == null){
	session.setAttribute("invalidMsg","Login Please...");
	response.sendRedirect("login.jsp");
}
%>

<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
					<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
					<h4 class="text-success">Add Contact</h4>
					</div>
					
					<%
					String sucssMsg=(String) session.getAttribute("succMsg");
					String errorMsg=(String) session.getAttribute("failedMsg");
					
					if(sucssMsg != null){
						%>
						<p class="text-success text-center"><%= sucssMsg %></p>
						<%
						session.removeAttribute("succMsg");
						}
					
						if(errorMsg != null){
						%>
						<p class="text-success text-center"><%= errorMsg %></p>
						<%
						session.removeAttribute("failedMsg");
						}
							
						%>
					
					
						<div class="card-body">
							<form action="addContact" method="post">
								<%
									if(user!=null)
									{%>
									<input type="hidden" value="<%= user.getId() %>" name="userId">
								
									<%}
								%>
							<div class="form-group">
							<label>Enter full name</label>
									<input name="name"
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" >
									</div>
							
								<div class="form-group">
								<label>Enter Email</label>
									<input name="email"
										type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp">
									</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Enter Phone Number</label> <input name="phno"
										type="number" class="form-control"
										id="exampleInputPassword1">
								</div>
								
								<div class="form-group">
										<input name="about"
										type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Enter About">
								</div>
								
								<button type="submit" class="btn btn-primary badge-pill btn-block">Save Contact</button>
							</form>

						</div>
					</div>
				</div>


			</div>
		</div>
		
		<div style="margin-top: 77px">
		<%@include file="component/footer.jsp"%>
	</div>

</body>
</html>