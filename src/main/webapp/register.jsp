<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script type="text/javascript">
  	function validate() 
  	{
  		let phone=document.getElementById("phone").value;
  		let pwd=document.getElementById("pwd").value;
  		let c_pwd=document.getElementById("c_pwd").value;
  		let email=document.getElementById("email").value;
  		let city=document.getElementById("city").value;
  		let gender1=document.getElementById("gender1").checked;
  		let gender2=document.getElementById("gender2").checked;
  		
  		console.log("phone: "+phone);
  		console.log("pwd: "+pwd);
  		console.log("c_pwd: "+c_pwd);
  		console.log("email: "+email);
  		console.log("City: "+city);
  		console.log("gender1: "+gender1);
  		console.log("gender2: "+gender2);
  	
  		
  		if(phone=="")
  		{	alert("Phone must not be empty..");
  			return false;
  		}
  		else if(pwd=="")
  		{	alert("Password must not be empty..");
			return false;
		}else if(c_pwd=="")
  		{	alert("Confirm Password must not be empty..");
		return false;
	    }
		else if(email=="")
  		{	alert("Email must not be empty..");
			return false;
		}
		else if(city=="")
  		{	alert("Address must not be empty..");
			return false;
		}
		else if(gender1==false && gender2==false)
  		{	alert("Must choose Gender");
			return false;
		}
		else if(pwd!=c_pwd)
		{
  			alert("Password and confirm password must be same");
  			return false;
		}
  		return true;
	}
  </script>
 
</head>
<body>
<%@ include file="HomeMenu.jsp" %>

<%
		String msg=request.getParameter("msg");
		if(msg==null)
			msg="";
		//out.println(msg);
		
%>
<div class="row  m-3">
	<div class="col-sm-5 ">
	<div>
				<span class="mt-1 p-1  text-success display-5 text-center"><%=msg%></span>				
	</div>
		<h1 class="alert text-bg-info text-center">Register Form</h1>
		<form action="RegisterServlet" method="post"  onsubmit="return validate()">
			<div class="mb-3">
				<input type="text" class="form-control" id="phone" name="phone" placeholder="Phone">
			</div>
			<div class="mb-3">
				<input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password">
			</div>
			<div class="mb-3">
				<input type="password" class="form-control" id="c_pwd" name="c_pwd" placeholder="Confirm-Password">
			</div>
			<div class="mb-3">
				<input type="email" class="form-control" id="email" name="email" placeholder="Email">
			</div>
			
			<div class="mb-3">
				Male<input type="radio" name="gender"  id="gender1"  value="male" >
				FeMale<input type="radio" name="gender"  id="gender2"  value="female">
			</div>
			
			<div class="mb-3">
				<textarea class="form-control" id="city" name="city"  placeholder="City"></textarea>
				<input type="hidden" name="role" value="user">
			</div>
			
			<div class="mb-3">
				<button class="btn btn-danger" type="submit" >Register</button>
				<button class="btn btn-info" type="reset">Reset</button>
			
			</div>
			
		</form>
	</div>
	<div class="col-sm-7 p-5">
		<img alt="" src="images/si3.jpg" class="img-thumbnail">
		
	</div>
</div>
<%@ include file="HomeFooter.jsp" %>
</body>
</html>