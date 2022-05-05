<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Project</title>
    







   

    
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

 

    <script src="https://kit.fontawesome.com/2658db6bdc.js" crossorigin="anonymous"></script>
    
    <link href="project-page/fund-project/css/main.css" rel="stylesheet" media="all">
   <link rel="stylesheet" href="project-page/fund-project/index.css">
     
</head>
<body>
    <nav >
            <div class="wrapper1">
                <a href="index.jsp" id="b2">
                    <img src="images/logo.png" alt=""> </a>
                   
            </div>

            <div class="wrapper2">
                <div class="container">
                
                <a href="Controller?action=listAcceptedProjects" id="b6" style="cursor:pointer;"> Discover</a>
             
                   <!-- <div class="menu" id="menu"> 
                        <a href="#">menu item 1</a>
                        <hr>
                        <a href="#">menu item 1</a>
                        <hr>
                        <a href="#">menu item 1</a>
                    </div>
                
                </div>  -->
                
                
            
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


    <section class="replace">
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body" style="margin-top:17%;">



                    <h2 class="title">Fund A Project</h2>
                    <form method="GET" action="Controller">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label autocomplete="off" class="label">Funding Amount</label>
                                    <input  hidden type="text" name="id" value="${id}">
                                    <input class="input--style-4" type="text" name="sum3">
                                    <input hidden type="text" name="sum2" value="${sum2}">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label  class="label">Secret Code</label>
                                    <input autocomplete="off" class="input--style-4" type="text" name="last_name">
                                </div>
                            </div>
                            
                        </div>
                        <div class="row row-space">


                            

                         
                            
                        </div>
                        <div class="row row-space">
                           <div class="col-2">
                                <div class="input-group">
                                    <label class="label">CCV</label>
                                    <input autocomplete="off" class="input--style-4" type="email" name="email">
                                </div>
                            </div>
                                <div class="col-2">
                                <div class="input-group">
                                    <label autocomplete="off" class="label">Payement Method</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45"> Master Card
                                            <input type="radio" checked="checked" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container"> Visa
                                            <input type="radio" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                  
                        <div class="p-t-15">
                         <button  name="action" value="fund_now"  class="btn btn--radius-2 btn--blue" style="background-color: #22bc63;" type="submit">Fund Now</button> 
                     
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

   
    <script src="vendor/jquery/jquery.min.js"></script>
  
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

  
    <script src="js/global.js"></script>
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