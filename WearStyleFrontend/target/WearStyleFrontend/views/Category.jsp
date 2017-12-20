<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN</title>
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
					<h1>Category</h1><br>
				  <form action="saveC" method="post">
					<input type="text" name="cname"  placeholder="Category Name">
					<input type="text" name="cdesc" placeholder="Category Description">
					<input type="submit" value="SUBMIT"/>
				  </form>
				  
				  <br/>
				  <table class="table">
				  <tr class="success">
				      <th>CATEGORY NAME</th>
				      <th>CATEGORY DESC</th>
				      <th></th>
				      
				      
				      <th></th>
				  </tr>
				  
        <c:forEach items="${clist}" var="c">
				  <tr class="active">
				   <td>${c.categoryname}</td>
				   <td>${c.categorydescription }</td>
				   <td><a href="deleteC?cid=${c.cid}"><span class="glyphicon glyphicon-trash"></span></a></td>
  				   <td><a href="updateC?cid=${c.cid}"><span class="glyphicon glyphicon-pencil"></span></a></td>
				  </tr>
	    </c:forEach>
				  
				  </table>
					
				  
				</div>
			</div>
		
  </div>
  <div id="menu1" class="tab-pane fade">
     <div class="modal-dialog">
				<div class="loginmodal-container">
					<h1>Supplier</h1><br>
				  <form action="saveS" method="post">
					<input type="text" name="cname"  placeholder="supplier Name">
					<input type="text" name="cdesc" placeholder="supplier address">
					<input type="submit" value="SUBMIT"/>
				  </form>
				  
				  <br/>
				  <table class="table">
				  <tr class="success">
				      <th>SUPPLIER NAME</th>
				      <th>SUPPLIER ADDRESS</th>
				      <th></th>
				      
				      
				      <th></th>
				  </tr>
				  
        <c:forEach items="${clist}" var="c">
				  <tr class="active">
				   <td>${c.categoryname}</td>
				   <td>${c.categorydescription }</td>
				   <td><a href="deleteC?cid=${c.cid}"><span class="glyphicon glyphicon-trash"></span></a></td>
  				   <td><a href="updateC?cid=${c.cid}"><span class="glyphicon glyphicon-pencil"></span></a></td>
				  </tr>
	    </c:forEach>
				  
				  </table>
					
				  
				</div>
			</div>
  </div>
  <div id="menu2" class="tab-pane fade">
    <h3>Menu 2</h3>
    <p>Some content in menu 2.</p>
  </div>
</div>
</div>


	

</body>
</html>
