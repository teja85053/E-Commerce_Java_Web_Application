
<%
	String phone=(String)session.getAttribute("phone");
String role=(String)session.getAttribute("role");
%>
<nav class="navbar navbar-expand-sm  bg-dark navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">
               <img src="images/logo2.png" style="width:14vw" alt="">
            </a>
            <button  class="navbar-toggler"  type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div  class="collapse navbar-collapse" id="mynavbar">
                <ul class="navbar-nav me-auto">
                    <li>
                        <a class="nav-link" href="contact.jsp">Contact</a>
                    </li>
                    
                    <li>
                        <a class="nav-link" href="products.jsp">Products</a>
                    </li>
                    <li>
                        <a class="nav-link" href="logout.jsp">Logout</a>
                    </li>
                    
                </ul>  
                
                
        		<button class="btn btn-info"  type="button">Active :&nbsp;&nbsp;<%=role.toUpperCase() %>&nbsp;&nbsp;<%=phone %>&nbsp;&nbsp;</button>
        		
            </div>
        </div>
     </nav>
     
     