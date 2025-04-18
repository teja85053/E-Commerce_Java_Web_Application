<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<%@ include file="AdminMenu.jsp" %>


<div class="row  m-3">
	<div class="col-sm-5 ">
		<h1 class="alert text-bg-info text-center">Add Product</h1>
		<form action="AddProduct.jsp" method="post"  onsubmit="return validate()">
			<div class="mb-3">
				<input type="text" class="form-control" id="product_id" name="product_id" placeholder="Product Id:">
			</div>
			<div class="mb-3">
				<input type="text" class="form-control" id="pname" name="pname" placeholder="Product Name">
			</div>
			<div class="mb-3">
				<input type="number" class="form-control" id="price" name="price" placeholder="Price">
			</div>
			<div class="row mb-3">
			<div class="col-sm-9">
				<select class="form-control "  name="discount" id="discount">
				  <%
				  	for(int i=1;i<=100;i++)
				  	{
				  		out.println("<option>"+i+"</option>");
				  	} 
				  %>
				</select>
				</div>
				<div class="col-sm-3">
				<label  class="bg-info p-2">Discount In %</label>
				</div>
				</div>
			
			<div class="mb-3">
				<textarea class="form-control" id="discription" name="description"  placeholder="Product Description"></textarea>
			</div>
			
			<div class="mb-3">
				<input type="file" multiple="multiple" class="form-control" id="prod_image" name="prod_image"  onchange="upload()">
			</div>
			<div>
					<img alt="prod image" id="pimage" src="" style="width:5vw">
			</div>
			<div class="mb-3">
				<button class="btn btn-danger" type="submit" >Add</button>
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
<script type="text/javascript">
	function  upload() 
	{		let p_image=document.getElementById("prod_image").files[0];
			let formData=new FormData();
			formData.append("prod_image",p_image);
			let xhttp=new XMLHttpRequest();
			xhttp.open("POST","ImageUpload.jsp");
			xhttp.send(formData);		
			xhttp.onload=function(){
				if(this.readyState==4 && this.status==200)
					{
						document.getElementById("pimage").src=this.responseText;
					}else
						{
						alert("Error");
						}
			}
	}
	
  	function validate() 
  	{
  		let product_id=document.getElementById("product_id").value;
  		let pname=document.getElementById("pname").value;
  		let price=document.getElementById("price").value;
  		let description=document.getElementById("description").value;
  		
  		
  		console.log("product_id: "+product_id);
  		console.log("pname: "+pname);
  		console.log("price: "+price);
  		console.log("description: "+description);
  			
  		if(product_id=="")
  		{	alert("Product_id must not be empty..");
  			return false;
  		}
  		else if(pname=="")
  		{	alert("Product Name must not be empty..");
			return false;
		}
		else if(price=="")
  		{	alert("Price must not be empty..");
			return false;
		}else if(description=="")
  		{	alert("Description must not be empty..");
		    return false;
	   }
  	   return true;
	}
  </script>
