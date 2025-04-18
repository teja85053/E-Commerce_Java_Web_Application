<%@page import="java.util.TreeSet"%>
<%@page import="java.util.ArrayList"%>
<%
	String phone=(String)session.getAttribute("phone");
    String role=(String)session.getAttribute("role");
    TreeSet<Integer> items=(TreeSet<Integer>)session.getAttribute("cart");
    int cart_size=0;
    if(items!=null)
    {
    	cart_size=items.size();
    }
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
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                    <li>
                        <a class="nav-link" href="#" onclick="window.open('ViewCart.jsp','','width=600,height=600,fullscreen=no')">View Cart</a>
                    </li>
                    <li>
                        <a class="nav-link" href="logout.jsp">Logout</a>
                    </li>
                    
                </ul>  
                <div>
                <a href="#" onclick="window.open('ViewCart.jsp','','width=600,height=600,fullscreen=no')"><span class="badge bg-primary"><%=cart_size %>&nbsp;Items</span></a>
                </div>
                <div class="pe-2">
                <a><img alt="" src="images/cart.png" style="width:5vw"></a>
                </div>
                
                <div>
        		<button class="btn btn-info"  type="button">Active :&nbsp;&nbsp;<%=role.toUpperCase() %>&nbsp;&nbsp;<%=phone %>&nbsp;&nbsp;</button>
        		</div>
            </div>
        </div>
     </nav>
     
     