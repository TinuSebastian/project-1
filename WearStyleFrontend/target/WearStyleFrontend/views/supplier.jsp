
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    	  <div class="modal-dialog">
				<div class="loginmodal-container">
					<h1>Supplier</h1><br>
				  <form>
					<input type="text" name="sid" placeholder="sid">
					<input type="text" name="supplier name" placeholder="supplier name">
					<input type="text" name="supplier address"placeholder=" supplier adress">
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
				  
        <c:forEach items="${slist}" var="c">
				  <tr class="active">
				   <td>${c.supplier}</tnamed>
				   <td>${c.supplier }</td>
				   <td><a href="deleteC?sid=${c.sid}"><span class="glyphicon glyphicon-trash"></span></a></td>
  				   <td><a href="updateC?sid=${c.sid}"><span class="glyphicon glyphicon-pencil"></span></a></td>
				  </tr>
				  
	    </c:forEach>
				  
				  </table>
					
				  
				</div>
			</div>
		
  </div>
  <div id="menu1" class="tab-pane fade">
    <h3>Menu 1</h3>
    <p>Some content in menu 1.</p>
  </div>
  <div id="menu2" class="tab-pane fade">
    <h3>Menu 2</h3>
    <p>Some content in menu 2.</p>
  </div>
</div>
</div>


	

</body>
</html>
					
				  
					
				