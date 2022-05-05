<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main</title>
    <link rel="stylesheet" href="main/style.css">
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
                
          
                  <a href="Controller?action=listAcceptedProjects" id="b6" style="cursor:pointer;"> Discover</a>
                
            
              
                     
                     
                     
                     <% String username=(String)session.getAttribute("login");
						if(username==null){
					%>
						<a href="signin.jsp">Signin</a>
					<%
						} else {
					%>
						<a href="Controller?action=logout">Logout</a>
					<%
						}
					%>
                     
                     
                     
                     
       

                <a href="Controller?action=List_my_projects" id="b5" style="cursor:pointer;"  >My Projects</a>
                
            <a href="add-project.jsp"><button id="b1" style="cursor:pointer;" >START NOW</button> </a>
            
           

</div>

    </nav>
<main>




 <!-- Section 1 -->
 <br><br>
 <section class="containerx">
    
     
         
          
           <h1 >Creative works reveal a world of possibilities.</h1>
           <p>WayFunder is where early adopters and innovation seekers find lively, imaginative tech before it hits the mainstream.</p>
 
 
 
 
           <button id="b3" style="cursor:pointer;" >START A WAYFUNDER</button>
 
 
 
 
           
 </section>
 
 
 
 <!-- section5 -->
 <section class="section5">
    
   <div class="wrapper5">
   
   <div class=""><h1>7</h1>
       <p>Financed Projects</p>
   </div>
   <div class=""><h1>123k</h1>
       <p>Total budget raised</p>
   </div>
   <div class=""><h1>72K</h1>
       <p>Commitments</p>
   </div>
   <div class=""><h1>13K</h1>
       <p>Highest campaign Goal</p>
   </div>
   
   
   </div>
   </section>
   
 
 
 
 <!-- Section 3 -->
 
 <section class="section3">
   <p> Raise Capital</p>
   
   <h1>Get help. Give kindness !</h1>
  <p>With the help of our platform, we empower entrepreneurs with the support that they need to thrive. </p>
 
 <div class="container3">
 
 <div><img src="images/sect2/1.png" alt="">
  <h1>Help Innovate</h1>
    <p>Contribute to world changing innovations.</p></div>
 
 
 <div ><img src="images/sect2/2.png" alt=""> 
   <h1>Increase Funds</h1>
   <p>The best plateform to quickly donate and invest.</p>
 </div>
 <div ><img src="images/sect2/3.png" alt=""> <h1>Assist</h1>
   <p>Help a fellow entrepreneur achieve their goals, make history.</p></div>
 <div ><img src="images/sect2/4.png" alt=""><h1>Tax Free</h1>
   <p>All donations and small investements are tax-deductible.</p></div></div>
 </div>
 
 </section>





















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


<script src="script/script.js"></script>
</body>
</html>








<!-- 



    
-->