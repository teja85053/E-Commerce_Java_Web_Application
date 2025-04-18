<%@page import="beans.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ecom.dao.DAO"%>
<%@page import="java.util.TreeSet"%>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<%
TreeSet<Integer> items=(TreeSet<Integer>)session.getAttribute("cart");
DAO dao=new DAO();
ArrayList<Product> products=dao.getProducts(items);
float totalAmount=0.0f,totalDiscount=0.0f,paybleAmount=0.0f;
%>
<div class="container">
<table class='table'>
<%
for(Product product:products)
{
	totalAmount+=product.getPrice();
	float discount=(product.getPrice()*product.getDiscount_percentage())/100;
	totalDiscount+=discount;
	out.println("<tr>");
	out.println("<td>"+product.getPid()+"</td>");
	out.println("<td>"+product.getPname()+"</td>");
	out.println("<td>"+product.getPrice()+"</td>");
	out.println("<td>"+product.getDiscount_percentage()+"</td>");
	out.println("<td>"+discount+"</td>");
	out.println("</tr>");
}
paybleAmount=totalAmount-totalDiscount;
out.println("<tr>");
out.println("<td colspan='2'>Total Amount</td><td>"+totalAmount+"</td>");
out.println("</tr>");
out.println("<tr>");
out.println("<td colspan='4'>Total Discount Amt</td><td>"+totalDiscount+"</td>");
out.println("</tr>");
out.println("<tr>");
out.println("<td colspan='4'>PaybleAmount:&nbsp;</td><td>"+paybleAmount+"</td>");
out.println("</tr>");
out.println("</table>");
%>
</div>
<button onclick="print()">Print</button>


