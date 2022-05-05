<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="project-page/project-page1.css">
    <link rel="stylesheet" href="project-page/project-page2.css">
    <script src="https://kit.fontawesome.com/2658db6bdc.js" crossorigin="anonymous"></script>
   
  
</head>
<body>
    <nav>
            <div class="wrapper1">
                <a href="index.jsp" id="b2"><img src="images/logo.png" alt=""> </a>
                   
            </div>

            <div class="wrapper2">
                <div class="container">
                
                <a class="bouta"  href="#">Discover</a>
             
                 
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




<!-- ******************************************************************************************************************-->
<!-- ******************************************************************************************************************-->
<!-- ******************************************************************************************************************-->
<br> <br> <br>


  
                   
                   








<ul class="nav nav-tabs justify-content-center" id="navi">
  <li class="nav-item">
      <a class="nav-link " style="color:#0d6f36;"href="Controller?action=listAcceptedProjects&param1=0" >All Projects</a>
    </li>

    <li class="nav-item">
      <a class="nav-link " style="color:#0d6f36;"href="Controller?action=listAcceptedProjectsCat&param1=1">Tech & Innovation</a>
    </li>
    <li class="nav-item">
      <a class="nav-link " style="color:#0d6f36;"href="Controller?action=listAcceptedProjectsCat&param1=2">Creative Works</a>
    </li>

    <li class="nav-item">
      <a class="nav-link " style="color:#0d6f36;"href="Controller?action=listAcceptedProjectsCat&param1=3" >Community Projects</a>
    </li>
  </ul>



<section class="project-list">

 <c:if test="${empty projects}">
 <h1 class="text-center" style="margin-top:1.4EM; margin-bottom:1.4EM; margin-left:2.6em; color:#A7C1B2; font-size:5EM;">No Results Found</h1>
 </c:if>


 

<c:forEach var="sub" items="${requestScope.projects}">
	
	
	
	



	 
	
	 <div class="card" style="width: 18rem;">
       <img class="card-img-top" src="images/placeholder/phone.jpg" alt="Card image cap"> 
   <!--    <img class="card-img-top" src="https://loremflickr.com/290/220/computer?random=${Math.random()}" alt="Card image cap">-->
   
        <div class="card-body">
        
<c:if test="${sub.sum2>=sub.goal}">
     <span style="color:#ff5050; font-weight:700;" >Closed</span>
 </c:if>
<c:if test="${sub.sum2<sub.goal}">
  <span style="color:#239554; font-weight:700;" >In Progress</span>  
  </c:if>
        
        
            
          
          
          
          
        </div>
        
        <ul class="list-group list-group-flush">
          <li class="list-group-item"><h5 class="card-title"><b>${sub.title}</b></h5>
        
            <p class="card-text" style="font-size: 13px;">${sub.description}</p>
        
        
   
        
       <span style="color:gray;">${sub.date}</span> <br> <br> <!-- ID CAT -->

       <div>
        
        <label for="volume"><span class="budget">${sub.sum2}</span> / ${sub.goal}</label>
        <input id="myinput" type="range" id="volume" name="volume"
        disabled min="0" max="${sub.goal}" value="${sub.sum2}"  >
      </div>

        <div class="the-button">
        <div class="card-body">
        
        
        <form method="get" action="../Controller">
        
        <input type="hidden" value="${sub.idProject}">
        
     <!-- <button type="submit" name="action" value="fund_project" class="card-but" style="margin-left:4em;">  Fund Me</button>-->
       
     
        
   <!--    <a href="Controller?action=fund_project&param1=${sub.idProject}" class="card-but2" style="margin-left:4em; border-radius: 7px;
    border:2px #2ECC71 solid;
    text-decoration:none;
	color:#054e23;
	padding:0.3em;">Fund Me</a> -->
	
<c:if test="${sub.sum2>=sub.goal}">

   <a href="#" class="card-but2" style="margin-left:4em; border-radius: 7px;
    border:2px #989A97 solid;
    text-decoration:none;
	color:#989A97;
	
	cursor: not-allowed;
	padding:0.3em; ">Fund Me</a>
 </c:if>
<c:if test="${sub.sum2<sub.goal}">
    <a href="Controller?action=fund_project&param1=${sub.idProject}" class="card-but2" style="margin-left:4em; border-radius: 7px;
    border:2px #2ECC71 solid;
    text-decoration:none;
	color:#054e23; 
	padding:0.3em;">Fund Me</a>

</c:if>	
        
          </form>
          
          
        </div>
    </div>
    </li>
    </ul>
      </div>
	
	 
	 

	 	

	 
	 
	 
	
</c:forEach>




	

	 
	 



<!-- <c:forEach var="sub" items="${requestScope.projects}">
	

	 <c:out value='<div class="card" style="width: 18rem;">
        <img class="card-img-top" src="/project-page/image/phone.jpg" alt="Card image cap">
        <div class="card-body">
            Funding 
          
          
        </div>
        
        <ul class="list-group list-group-flush">
          <li class="list-group-item"><h5 class="card-title">${sub.title}</h5>
        
            <p class="card-text" style="font-size: 13px;">${sub.description}</p>
        
        
   
        
       <span style="color:gray;">Category</span> <br> <br> 

       <div>
        
        <label for="volume"><span class="budget">${sub.sum2}</span> / ${sub.goal}</label>
        <input id="myinput" type="range" id="volume" name="volume"
        disabled min="0" max="900" value="200"  >
      </div>

        <div class="the-button">
        <div class="card-body">
        <button class="card-but" style="margin-left:4em;
        ">  <a href="#" class="card-link">Fund Me</a> </button>
          
        </div>
    </div>
    </li>
    </ul>
      </div>' escapeXml="false"></c:out>
	 
	 
	 

	
</c:forEach> -->






    
  <!--    <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="/project-page/image/phone.jpg" alt="Card image cap">
        <div class="card-body">
            Funding 
          
          
        </div>
        
        <ul class="list-group list-group-flush">
          <li class="list-group-item"><h5 class="card-title">Project title</h5>
        
            <p class="card-text" style="font-size: 13px;">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        
        
   
        
       <span style="color:gray;">Category</span> <br> <br>

       <div>
        
        <label for="volume"><span class="budget">200 DT</span> / 900 DT</label>
        <input id="myinput" type="range" id="volume" name="volume"
        disabled min="0" max="900" value="200"  >
      </div>

        <div class="the-button">
        <div class="card-body">
        <button class="card-but" style="margin-left:4em;
        ">  <a href="#" class="card-link">Fund Me</a> </button>
          
        </div>
    </div>
    </li>
    </ul>
      </div> -->









</section>





   











<!-- ******************************************************************************************************************-->
<!-- ******************************************************************************************************************-->
<!-- ******************************************************************************************************************-->




    
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
            <a href=""><button style="padding:0.8em 2Em !important;">SUBMIT NOW</button></a>

        </div>
</div>
</section>


</main>


<script src="script/script.js"></script>
</body>
</html>