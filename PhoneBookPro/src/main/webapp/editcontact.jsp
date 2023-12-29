<%@page import="com.entity.Contact"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="com.dao.ContactDAO"%>
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

	<%
	if (user == null) {
		session.setAttribute("invalidMsg", "Login Please...");

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
					String errorMsg=(String) session.getAttribute("failedMsg");
					
					
						if(errorMsg != null){
						%>
						<p class="text-success text-center"><%= errorMsg %></p>
						<%
						session.removeAttribute("failedMsg");
						}
							
						%>
					
					
						<div class="card-body">
							<form action="update" method="post">
								<%
									int cid=Integer.parseInt(request.getParameter("cid"));
									ContactDAO dao=new ContactDAO(DbConnect.getConn());
									Contact c=dao.getContactByID(cid);
								%>
								
								<input type="hidden" value="<%=cid %>" name="cid">
								
							<div class="form-group">
							<label>Enter full name</label>
									<input value="<%=c.getName() %>" name="name"
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" >
									</div>
							
								<div class="form-group">
								<label>Enter Email</label>
									<input name="email" value="<%=c.getEmail() %>"
										type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp">
									</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Enter Phone Number</label> <input name="phno" value="<%=c.getPhno() %>"
										type="number" class="form-control"
										id="exampleInputPassword1">
								</div>
								
								<div class="form-group">
										<input name="about" value="<%=c.getAbout() %>"
										type="text" class="form-control"
										id="exampleInputPassword1" placeholder="Enter About">
								</div>
								
								<button type="submit" class="btn btn-primary badge-pill btn-block">Update Contact</button>
							</form>

						</div>
					</div>
				</div>


			</div>
		</div>
		
		<div style="margin-top: 120px">
		<%@include file="component/footer.jsp"%>
	</div>
	
	

</body>
</html>