<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registartion Page</title>
<%@include file="component/allCss.jsp" %>

</head>
<body style="background-color: #f7faf8;">
<%@include file="component/navbar.jsp" %>

<div class="container-fluid div-color">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
					<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
					<h4 class="text-success">Registration</h4>
					 </div> 
					
					<%
					String sucssMsg=(String) session.getAttribute("sucssMsg");
					String errorMsg=(String) session.getAttribute("errorMsg");
					
					if(sucssMsg != null){
						%>
						<p class="text-success text-center"><%= sucssMsg %></p>
						<%
						session.removeAttribute("sucssMsg");
						}
					
						if(errorMsg != null){
						%>
						<p class="text-success text-center"><%= errorMsg %></p>
						<%
						session.removeAttribute("errorMsg");
						}
							
						%>
					
					
						<div class="card-body">
							<form action="register" method="post">
							
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
									<label for="exampleInputPassword1">Enter Password</label> <input name="password"
										type="password" class="form-control"
										id="exampleInputPassword1">
								</div>
								
								<button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
							</form>

						</div>
					</div>
				</div>


			</div>
		</div>
	
	<div style="margin-top: 141px">
		<%@include file="component/footer.jsp"%>
	</div>

</body>
</html>