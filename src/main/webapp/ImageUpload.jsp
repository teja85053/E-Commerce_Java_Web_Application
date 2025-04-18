<%@ page import="com.oreilly.servlet.MultipartRequest, java.io.*" %>

<%
	String path=application.getRealPath("/");
	path=path+"ProdImages";
	File f=new File(path);
	f.mkdir();
	MultipartRequest multi= new MultipartRequest(request,path,5*1024*1024*1024);
	
	String name=multi.getFile("prod_image").getName();
    out.println("ProdImages/"+name);
   
%>



