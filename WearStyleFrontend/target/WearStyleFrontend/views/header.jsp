<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>

 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
</head>
<body>
<nav class="navbar navbar-inverse">

    <div class="navbar-header">
      <a class="navbar-brand" href="#">WEARSTYLE</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach items="${clist}" var="c">
          <li><a href="#">${c.categoryname}</a></li>
          </c:forEach>
        </ul>
      </li>
    </ul>
    
    <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
    
    <ul class="nav navbar-nav navbar-right">
      <li><a href="reg"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
       <p>
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart
        </button>
      </p>
 
</nav>



 
</body>
</html>
	

