<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp"%>

</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Login Page</h4>
					</div>
					
					<% 
					String invalidMsg=(String) session.getAttribute("invalidMsg");
					
					if(invalidMsg != null){
						%>
						<p class="text-success text-center"><%= invalidMsg %></p>
						<%
						session.removeAttribute("invalidMsg");
						}
					%>
					
					<% 
					String logMsg =(String) session.getAttribute("logMsg");
					
					if(logMsg != null){
						%>
						<p class="text-success text-center"><%= logMsg %></p>
						<%
						session.removeAttribute("logMsg");
						}
					%>
					
					
					<div class="card-body">
						<form action="login" method="post">

							<div class="form-group">
								<label>Enter Email</label> <input name="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									name="password" class="form-control" id="exampleInputPassword1">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>

					</div>
				</div>
			</div>


		</div>
	</div>

	<div style="margin-top: 243px">
		<%@include file="component/footer.jsp"%>
	</div>

</body>
</html>