<%
String log_msg=request.getParameter("msg");
if(log_msg==null){
	log_msg="";
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
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>
                    <li>
                        <a class="nav-link" href="register.jsp">Register</a>
                    </li>
                    <li>
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li>
                        <a class="nav-link" href="contact.jsp">Contact</a>
                    </li>
                </ul>
                
                <span class="text-bg-primary"><%=log_msg %></span>
                
                
            </div>
        </div>
     </nav>