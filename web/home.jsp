<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
</head>
<style>
    *{
        box-sizing: border-box;
    }
    .nav{
        margin-top: 0%;
       
    }
    .nav nav{
         background-color:  rgb(173, 132, 209);
          padding: 20px;
        font-size: 30px;
        font-style:oblique ;
    }
    .nav nav a{
        margin-top: -10px;
        margin-right:-10px;
        float: right;
        color: black;
        text-decoration: none;
        margin-left: 15px;
      
    }
    .si{
        background-color:  rgb(210, 181, 236);
        padding: 10px;
          border-radius: 50px
    }
     .su{
        background-color: rgb(210, 181, 236);
        padding: 10px;
          border-radius: 50px
    }
    
    
    
    ul {
list-style-type: none;
margin-top: -18px;
overflow: hidden;
padding-left:360px;
background-color: rgb(173, 132, 209);
border-top:solid;
border-color: white;
}

li {
font-size: 20px;
float: left;
margin-left:20px;
}

li a, .dropbtn {
display: inline-block;
color: rgb(8, 8, 8);
text-align: center;
padding: 14px 16px;
text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
background-color:  #f9f9f9;
}

li.dropdown {
display: inline-block;
}

.dropdown-content {
display: none;
position: absolute;
background-color: #f9f9f9;
min-width: 100px;
box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
z-index: 1;
}

.dropdown-content a {
color: black;
padding: 12px 22px;
text-decoration: none;
display: block;
text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
display: block;
}

.container{
    overflow-y:scroll ;
    height:500px;
}


.footer{
  margin-top: 0px;
  width: 100%;
  padding: 100px 15%;
  background-color: rgba(137, 78, 124, 1);
  color: #efefef;
  display: flex;
  opacity: 30%;
}
.footer div{
  text-align: center;
}
.col-2{
  flex-grow: 5;
}
.footer div h2{
  font-weight: 300;
  margin-top: 10px;
  letter-spacing: 2px;

}
.col-1 a{
  display: block;
  text-decoration: none;
  color: #efefef;
  margin-bottom: 10px;
  opacity: 100%;
  
}

</style>
<body>
    <div class="nav">
          <nav>E-commerce
       <a class=si href="home.jsp?val=abt"><%out.print(session.getAttribute("user"));%></a>  <a class="su" href="signup.html">Sign-up</a> </nav>
        <br>
    </div>
    
    
    <ul>
  <li><a href="home.php?val=home">Home</a></li>
  <li class="dropdown">
    <a href="" class="dropbtn">Category</a>
    <div class="dropdown-content">
      <a href="home.php?val=cp">Men</a>
      <a href="home.php?val=ce">Women</a>
      <a href="php/lout.php">Shoes</a>
      <a href="home.php?val=ab">Cloths</a>
    </div>
  </li>
  <li><a href="home.php?val=invest">Invest</a></li>
  <li><a href="home.php?val=cu">Contact Us</a></li>
 
</ul>
    <div class="container">
       <%
       String val=request.getParameter("val");
       if(val.equals("men")){
       %>
        <jsp:include page="display.jsp">
            <jsp:param name="val" value="men"/>
        </jsp:include>
        <%}else if(val.equals("home"))
       {
           %>
                   <jsp:include page="home.html"/>

        <%
           }
        %>
        
    </div>
    
    
     <div class="footer">
    <div class="col-1">
    <h2> Links</h2>
       <a href="#">Home</a></li>
			 <a href="#">About us</a>
			 <a href="#">Tutorial</a>
			 <a href="#">Event</a>
			 <a href="#"> Gallery</a>
       </div>
			 
			 
       <div class="col-2">
        <h2>Contact Info</h2>
           <b>Email :</b> anshitasaini30@gmail.com<br> 
           <b>Call :</b> +91 7891387514<br>
           <b>Fax :</b> +91 -123 4567890 <br>
           <b>Website :</b> https://www.FITS.com <br>
          
         </div>
         <div class="col-3">
          <h2>Available On</h2>

          <img src="https://img.freepik.com/free-vector/instagram-icon_1057-2227.jpg?size=626&ext=jpg&ga=GA1.1.1211183132.1688722041&semt=ais" alt="" width="50px">
          <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Logo_of_Twitter.svg/768px-Logo_of_Twitter.svg.png?20220821125553" alt="" width="50px">
          <img src="https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo-768x480.png" alt="" width="70px">

         </div>
      
			 </div>
    
    </div>
</body>
</html>