<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Library Interface</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>\resources\css\bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>\resources\css\bootstrap-theme.min.css">
<script src="<%=request.getContextPath() %>\resources\js\jquery-1.11.1.js"></script>
<script src="<%=request.getContextPath() %>\resources\js\bootstrap.min.js"></script>
<style type="text/css">    
.masthead img{
width:100%;
 }
.bs-example{
    	margin: 20px;
		margin-left: auto;
		margin-right: auto;
    }
</style>
</head>
<body>
<div class="masthead">
<img src="<%=request.getContextPath() %>\resources\images\header.png"/>
</div>
<div class="bs-example" align="center">
    <form:form class="form-inline" role="form" commandName="userLogin" action="console.htm" method="post">
        <div class="form-group">
            <label class="sr-only" for="username">Username</label>
            <form:input path="username" type="email" class="form-control" id="username" placeholder="Username"/>
        </div>
        <div class="form-group">
            <label class="sr-only" for="password">Password</label>
            <form:input path="password" type="password" class="form-control" id="password" placeholder="Password"/>
        </div>
        <div class="checkbox">
            <label><input type="checkbox"> Remember me</label>
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
    </form:form>
	</div>
<div class="masthead">
<img src="<%=request.getContextPath() %>\resources\images\footer.png"/>
</div>

</body>
</html>