<%@page import="ecom.dao.DAO"%>
<%

	int  pid=Integer.parseInt(request.getParameter("product_id"));
	String  pname=request.getParameter("pname");
	float  price=Float.parseFloat(request.getParameter("price"));
	int  discount_percentage=Integer.parseInt(request.getParameter("discount"));
	String  description=request.getParameter("description");
	String  prod_image=request.getParameter("prod_image");
	DAO dao=new DAO();
	if(dao.addProduct(pid, pname, price, discount_percentage, description, prod_image))
	{
		response.sendRedirect("AdminHome.jsp?msg=ProductAdded");
	}else 
	{
		response.sendRedirect("AdminHome.jsp?msg=Product Not Added");
	}
	
%>