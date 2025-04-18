<%@page import="beans.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="ecom.dao.DAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Document</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" type="image/x-icon" href="images/icon.png">
</head>
<body>
<%@include  file="UserMenu.jsp" %>
<div class="container-fluid">
<%
	DAO dao=new DAO();
	ArrayList<Product> products=dao.getProducts();
%>
	<div class="row">
	
	<%
		for(Product product:products)
		{
			float percentage=(product.getPrice()*product.getDiscount_percentage())/100;
	%>
		<div class="col-sm-3">
				<div class="card">
					<div class="card-body">
						<img alt="" src="ProdImages/<%=product.getProd_image() %>" class="img-thumbnail">
					</div>
					<div class="card-footer">
							<h4 class="text-bg-info p-2 text-center">London Hills</h4>
							<p><%=product.getDescription() %></p>
							<p>&#8377;<%=product.getPrice()-percentage%>  M.R.P: <del>&#8377;<%=product.getPrice() %></del> (<%=product.getDiscount_percentage()%>% off)</p>
							<p>
								<a class="btn btn-info" href="AddToCart.jsp?pid=<%=product.getPid()%>">AddToCart</a>
							</p>
					</div>
				</div>
		</div>
	<%
		} 
	%>
	</div>	
	</div>

<%@include file="HomeFooter.jsp" %>
</body>
</html>
    