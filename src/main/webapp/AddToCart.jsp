<%@page import="java.util.TreeSet"%>
<%
int pid=Integer.parseInt(request.getParameter("pid"));
TreeSet<Integer> items=(TreeSet<Integer>)session.getAttribute("cart");

if(items==null)
{
	items=new  TreeSet<Integer>();
	items.add(pid);
}
else{
	items.add(pid);
}
session.setAttribute("cart",items);
response.sendRedirect("UserHome.jsp");
%>