<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>
<body>
 <%@ include file="HomeMenu.jsp" %>
 
<%
		String msg=request.getParameter("msg");
		if(msg==null)
			msg="";
		//out.println(msg);
		
%>
<div class="row">
  <div class="col-sm-6 p-5">
  <div>
				<span class="mt-2 p-2  text-success display-5 text-center"><%=msg%></span>				
	</div>
  <h1 class="alert text-bg-info text-center">Login</h1>
 <form action="LoginCheck" onsubmit="return login()" method="post">
 <div class="mt-3 mb-3">
  	<input class="form-control " type="text" id="phone" name="phone" placeholder="Phone">
 </div>
 <div class="mt-3 mb=3">
 	<input class="form-control" type="password" id="pwd" name="pwd" placeholder="Password">
 </div>
<div class="mt-3 mb=3">
<button class="btn btn-info" type="submit">Login</button> 
<button class="btn btn-danger" type="reset">Reset</button>
</div>
 </div>
 <div class="col-sm-6">
 <img class="img-thumbnail" src="images/si3.jpg">
 </div>
 </div>

 <%@ include file="HomeFooter.jsp" %>
 
 
 
 
</body>
</html>


<script type="text/javascript">
function login()
{
	let ph=document.getElementById("phone").value;
	let pwd=document.getElementById("pwd").value;
	if (ph==""){
		alert("Phone must not be empty");
		return false;
	}else if(pwd==""){
		alert("Password must not be empty");
		return false;
	}
	return true;
}
</script>