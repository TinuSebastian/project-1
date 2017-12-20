<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>

<jsp:include page="Header.jsp"></jsp:include>

<h1>Registration</h1>
<h2>${msg}</h2>

<form action="save" method="post">
<input type="text" name="mail" placeholder="Ener your mail id...."/><br/>
<input type="text" name="password" placeholder="Ener your password..."/><br/>
<input type="submit" value="SUBMIT"/><br/>
<br/>
<br/>
<%-- 
<jsp:include page="footer.jsp"></jsp:include> --%>

</form>
</body>
</html>