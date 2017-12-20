<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<jsp:include page="Header.jsp"></jsp:include>
<div class="container">
<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">Category</a></li>
  <li><a data-toggle="tab" href="#menu1">Supplier</a></li>
  <li><a data-toggle="tab" href="#menu2">Product</a></li>
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
    	  <div class="modal-dialog">
				<div class="loginmodal-container">
					<h1>Category </h1><br>
				  <form action="editC" method="post">
					<input type="text" name="cname"  placeholder="Category Name" value="${category.categoryname }">
					<input type="text" name="cdesc" placeholder="Category Description" value="${category.categorydescription }">
					<input type="hidden" value="${category.cid }" name="cid"/>
					<input type="submit" value="SUBMIT"/>
				  </form>
</body>
</html>