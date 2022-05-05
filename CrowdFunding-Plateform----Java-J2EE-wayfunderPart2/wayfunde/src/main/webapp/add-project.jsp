
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Campaign</title>
    <link rel="stylesheet" href="index.css">







   

    
    <link href="add-project/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="add-project/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  
    <link href="add-project/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="add-project/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

 
    <link href="add-project/css/main.css" rel="stylesheet" media="all">
    <script src="https://kit.fontawesome.com/2658db6bdc.js" crossorigin="anonymous"></script>
   
       
</head>
<body>
    <nav>
            <div class="wrapper1">
                <a id="b2" href="index.jsp"> <img src="images/logo.png" alt="" > </a>
                   
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
            <button id="b1" style="cursor:pointer;" >START NOW</button> 
            
           

</div>

    </nav>
<main>


    <section class="replace">
        <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
            <div class="wrapper wrapper--w680">
                <div class="card card-4">
                    <div class="card-body">
    
    
    
                        <h2 class="title">Start Project</h2>
                        <form method="GET" action="Controller">
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Project Title</label>
                                        <input class="input--style-4" type="text" name="title">
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Funding Goal</label>
                                        <input class="input--style-4" type="text" name="goal">
                                    </div>
                                </div>
                                
                            </div>
                            <div class="row row-space">
    
    
                                
    
                                <div class="col-2">
                                
                                   <!--   <div class="input-group">
                                        <label class="label">Launch date (optional)</label>
                                        <div class="input-group-icon">
                                            <input autocomplete="off" class="input--style-4 js-datepicker" type="text" name="date">
                                            <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                        </div>
                                    </div> -->
                                    <div class="input-group">
                                        <label class="label">Launch date (optional)</label>
                                        <input class="input--style-4" type="text" name="date" placeholder="dd/mm/yyyy">
                                    </div>
                                
                                    
                                </div>
                                
                                
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Project Image</label>
                                        <input class="input--style-4" type="text" name="image">
                                    </div>
                                </div>
                                
                                
                            </div>
                          <!--    <div class="row row-space"> -->
                               
                               
                                    <div class="input-group">
                                        <label class="label">Project Description</label>
                                        <input class="input--style-4" type="text" name="description">
                                    </div>
                                    
                                    
                              <!--    </div> 
                                    <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Funder Reward</label>
                                        <div class="p-t-10">
                                            <label class="radio-container m-r-45"> With
                                                <input type="radio" checked="checked" name="gender">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container"> Without
                                                <input type="radio" name="reward">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>   
                            </div>-->
                            <div class="input-group">
                                <label class="label">Project Category</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="libcat">
                                        <option disabled="disabled"  selected="selected">Choose option</option>
                                        <option value="1">Tech And Innovation</option>
                                        <option value="2">Creative Works</option>
                                        <option value="3">Community Projects</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div> 
                            <div class="p-t-15">
                                 <p style="color:red; margin-right:auto;margin-left:auto; margin-bottom:1em;"> ${message}</p>
                                <button name="action" value="add_project"  class="btn btn--radius-2 btn--blue" style="background-color: #22bc63;" type="submit">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    
       
        <script src="add-project/vendor/jquery/jquery.min.js"></script>
      
        <script src="add-project/vendor/select2/select2.min.js"></script>
        <script src="add-project/vendor/datepicker/moment.min.js"></script>
        <script src="add-project/vendor/datepicker/daterangepicker.js"></script>
    
      
        <script src="add-project/js/global.js"></script>
    
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