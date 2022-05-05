<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Wayfunder</title>
<link rel="stylesheet" href="css/index.css">
<script src="https://kit.fontawesome.com/2658db6bdc.js" crossorigin="anonymous"></script>
</head>
<body>
    <nav>
            <div class="wrapper1">
                <a href="" id="b2">
                    <img src="images/logo.png" alt=""> </a>
                   
            </div>

            <div class="wrapper2">
                <div class="container">
                
                <a class="bouta"  href="#">Discover</a>
             
                    <div class="menu" id="menu"> 
                        <a href="#">menu item 1</a>
                        <hr>
                        <a href="#">menu item 1</a>
                        <hr>
                        <a href="#">menu item 1</a>
                    </div>
                
                </div>
            

                <a href="signin.jsp">Sign in</a>

                <a href="#">Projects</a>
            <button id="b1" >START NOW</button> 
           

</div>

    </nav>
<main>
<div id="frame">

 <iframe id="frame" src="main/main.html"  seamless="seamless" style="border:none;  display:block; width:100%; height:220vh;"   scrolling="no" title="description"></iframe> 
</div>
   <!--<iframe src="add-project/index.html"  style="border:none; width:100%;" height="850" scrolling="no" title="description"></iframe> -->


 <!--  <iframe id="frame" src="main/main.html"  seamless="seamless" style="border:none;  display:block; width:100%; height:145vh;"   scrolling="no" title="description"></iframe> -->
    
<!-- Section 6 -->

<section class="section6">
<div class="container2">
    <div class="wrapper1">
            <p>Contact us</p>
            <h1>Address Information</h1>
            <p>Crowdfunding is the use of small amounts of capital 
                to finance a new business venture.</p>
                <h2>Tunis Office</h2>
                <p>Roeterseiland Campus Building E
                    6th floor London
                    Monday to Friday : 9am to 8pm
                    examplemail.mail.com</p>
                    <h2>Berlin Office</h2>
                    <p>Roeterseiland Campus Building E
                        6th floor London
                        Monday to Friday : 9am to 8pm
                        examplemail.mail.com</p>
        </div>
        <div class="wrapper2">
            <p>Meet Our Team</p>
            <h1>Get In Touch</h1>
            <p>Our best-in-class Customer Care Specialists will answer your questions, day or night.</p>
            <input type="text" placeholder="Name" ><br>
            <input type="text" placeholder="Phone" ><br>

            <input type="text" placeholder="Subject" ><br>

            <input type="text" placeholder="E-mail" ><br>

            <input type="text" placeholder="Message" ><br>
            <a href=""><button>SUBMIT NOW</button></a>

        </div>
</div>
</section>


</main>
<script>

document.getElementById("b1").addEventListener("click",redirect_project);
document.getElementById("b2").addEventListener("click",redirect_main);
document.getElementById("b3").addEventListener("click",redirect_project);

function redirect_project(){
  document.getElementById("frame").innerHTML='<iframe src="main/addproject.jsp"  style="border:none; width:100%;" height="870" scrolling="no" title="description"></iframe>';
   
}


function redirect_main(){
  document.getElementById("frame").innerHTML='<iframe id="frame" src="main/main.html"  seamless="seamless" style="border:none;  display:block; width:100%; height:145vh;"   scrolling="no" title="description"></iframe>';
   
}

  
</script>
</body>
</html>