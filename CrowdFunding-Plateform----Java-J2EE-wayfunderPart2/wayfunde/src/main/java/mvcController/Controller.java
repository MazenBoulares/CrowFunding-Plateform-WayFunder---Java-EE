package mvcController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Project;
import entities.User;

import mvcModels.AccountService;
import mvcModels.ProjectService;



/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	private AccountService accountService;
	@EJB
	private ProjectService projectService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		RequestDispatcher rd ;
		
		
		
		
	
	
		if(action.contentEquals("signin")) {
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			
	            if(accountService.checkAdminSignin(username, password)) {
	                HttpSession session=request.getSession(true);
	                session.setAttribute("login",username);
	                rd=request.getRequestDispatcher("control-panel.jsp");
	                rd.forward(request, response);
	            }
	            else if(accountService.checkSignin(username,password)) {
	            	User users=accountService.getIDUser(username);
					int iduser=users.getIdUser();
				
					HttpSession session=request.getSession(true);
					
					
					
					session.setAttribute("login",username); 
			     	session.setAttribute("iduserr",iduser);  
					
			     	 request.setAttribute("id",iduser);
					
					rd=request.getRequestDispatcher("index.jsp");
					rd.forward(request,response);
					
	            }
	            else {
	                //redirecting to signin with error message
	                String error="Warning: wrong username and password";
	                request.setAttribute("message", error);
	                rd=request.getRequestDispatcher("signin.jsp");
	                rd.forward(request,response);

	            }

		}


			
		
		
	
		
		 /*#########################################################################################################*/
		
		if(action.contentEquals("signup")) {
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String email=request.getParameter("email");
			String error="";
			if(accountService.checkUserData(username,email)) {
			if(accountService.checkAvailability(username) && accountService.checkUserData(username, email)) {
				//inserting
				accountService.addUser(username,email,password);
				//redirecting to signin
				rd=request.getRequestDispatcher("signin.jsp");
				rd.forward(request,response);
			}
			else {
				//redirecting to signup with error message
				error="This username already exists";
				
			}
			}else {
				error="Warning: Wrong Data format";
			}
			request.setAttribute("message", error);
			rd=request.getRequestDispatcher("signup.jsp");
			rd.forward(request,response);
		}
		
		/*#########################################################################################################*/
		
		if(action.contentEquals("deleteuser")) {
            String username=request.getParameter("username");
            String message="";
            if(accountService.checkAvailability(username)) {
                message="User dosen't exist";
            }else {
                if(accountService.checkIfAdmin(username)) {
                    message="Cannot delete an admin";
                }else {
                int iduser=accountService.getId(username);
                projectService.deleteUserProjects(iduser);
                if(accountService.deleteUser(username)!=0) {
                    message="User has been deleted";
                }else {
                    message="Error";
                }
                }
            }
            request.setAttribute("message", message);
            rd=request.getRequestDispatcher("manageaccounts.jsp");
            rd.forward(request, response);
        }
		   
		
		 /*#########################################################################################################*/
		
		if(action.contentEquals("getusers")) {
			List<User> users = new ArrayList<User>();
			users = accountService.getAllUsers();
			request.setAttribute("users", users);
			rd = request.getRequestDispatcher("listUsers.jsp");
			rd.forward(request, response);
			
		}
		
		
		 
		
		 /*#########################################################################################################*/
		/* partie admin hwi */
		
		if(action.contentEquals("adduser")) {
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String email=request.getParameter("email");
			String message="";
			if(accountService.checkAvailability(username)) {
				accountService.addUser(username,email,password);
				message="Done";
			}else {
				message="this username already exists";
			}
			request.setAttribute("message", message);
			rd=request.getRequestDispatcher("manageaccounts.jsp");
			rd.forward(request, response);
			
		}
		
		
	
		
		if(action.contentEquals("manageprojects")) {
			List<Project> projects=projectService.getOnHoldProjects();
			request.setAttribute("projects", projects);
			rd=request.getRequestDispatcher("manageprojects.jsp");
			rd.forward(request, response);
			
			//tsir refresh baed kol accept/reject (redirect l lpage)	
		}
		
		
		
		
		if(action.contentEquals("manageaccounts")) {
			rd=request.getRequestDispatcher("manageaccounts.jsp");
			rd.forward(request, response);
		}
		
		

		
		
		if(action.contentEquals("rejectProject")) {
			String id=request.getParameter("idProject");
			projectService.rejectProject(id);
			List<Project> projects=projectService.getOnHoldProjects();
			request.setAttribute("projects", projects);
			rd=request.getRequestDispatcher("manageprojects.jsp");
			rd.forward(request, response);
		}
		
		
		
		
		
		if(action.contentEquals("acceptProject")) {
			String id="";
			id=request.getParameter("idProject");
			projectService.acceptProject(id);
			List<Project> projects=projectService.getOnHoldProjects();
			request.setAttribute("projects", projects);
			rd=request.getRequestDispatcher("manageprojects.jsp");
			rd.forward(request, response);
		}
		
		 /*#########################################################################################################*/
		
		if(action.contentEquals("listSubjects"))
		{
			List<Project> projects = new ArrayList<Project>();
			projects = projectService.getAllProjects();
			request.setAttribute("projects", projects);
			
			//rd = request.getRequestDispatcher("listSubjects.jsp");
			rd = request.getRequestDispatcher("project-page/project-page.jsp");
			rd.forward(request, response);
		}
		 /*#########################################################################################################*/
		
		if(action.contentEquals("listAcceptedProjects"))
		{
			List<Project> projects = new ArrayList<Project>();
			projects = projectService.getAcceptedProjects();
			request.setAttribute("projects", projects);
			
			//rd = request.getRequestDispatcher("listSubjects.jsp");
			rd = request.getRequestDispatcher("project-page.jsp");
			rd.forward(request, response);
			
			/* affichers projets par cat */
		}
		if(action.contentEquals("listAcceptedProjectsCat"))
		{
			int id=Integer.parseInt(request.getParameter("param1"));
			
			List<Project> projects = new ArrayList<Project>();
			projects = projectService.getAcceptedProjectsCat(id);
			request.setAttribute("projects", projects);
			
			//rd = request.getRequestDispatcher("listSubjects.jsp");
			rd = request.getRequestDispatcher("project-page.jsp");
			rd.forward(request, response);
		}
	
		
		/*********************************************************************/
		if(action.contentEquals("add_project")) {
			
			
			/*	DateFormat format = new SimpleDateFormat("dd/mm/yyyy", Locale.ENGLISH);
				Date date = null;
				try {
					date = (Date) format.parse(request.getParameter("date"));
				} catch (ParseException e) {
				
					e.printStackTrace();
				}  */
			
			
			HttpSession session=request.getSession(false);
			

			if(null == session.getAttribute("iduserr")) {
			
		    
		    		rd = request.getRequestDispatcher("signin.jsp");
					rd.forward(request,response); 
		      }
			else {
			
		      int iduser=(int)session.getAttribute("iduserr");
			
			
			
				String date=request.getParameter("date");

				
						
				String description=request.getParameter("description");
				
				
				
				
				float goal=Float.parseFloat(request.getParameter("goal"));
				
				String image=request.getParameter("image");
		
				int libCat=Integer.parseInt(request.getParameter("libcat"));
				

				String title=request.getParameter("title"); 
				
				
				if(projectService.checkProjectData(date, goal)) {
	
					projectService.addProject(date,description,goal,image,title,iduser,libCat); 
						rd=request.getRequestDispatcher("index.jsp");
						rd.forward(request,response); 
				
				}else {
					String error="Wrong Data Format";
					request.setAttribute("message", error);
					rd=request.getRequestDispatcher("add-project.jsp");
					rd.forward(request,response);
				}
				
				
				
			
				}}
		
		 /*#########################################################################################################*/
		
		 if(action.contentEquals("fund_project")) {

				HttpSession session=request.getSession(false);
				

				if(null == session.getAttribute("iduserr")) {
				
			    
			    		rd = request.getRequestDispatcher("signin.jsp");
						rd.forward(request,response); 
			      }
				else {
			 
		      int iduser=(int)session.getAttribute("iduserr");
			 int id = Integer.parseInt(request.getParameter("param1"));
				Project projects=projectService.getProject(id);
				  request.setAttribute("sum2", projects.getSum2());
				  request.setAttribute("id",id);
		            rd = request.getRequestDispatcher("fund-project.jsp");
					rd.forward(request, response);	
			
			
			
			
	   } 
		 }
	
		 /* ##################################################################*/
		if(action.contentEquals("fund_now")) {
			
			int id = Integer.parseInt(request.getParameter("id"));
			float sum2 = Float.parseFloat(request.getParameter("sum2"));
			Project projects=projectService.getProject(id);
			
			float sum3=Float.parseFloat(request.getParameter("sum3"));
			
			float sum_totale=sum2+sum3;
			
			projects.setSum2(sum_totale);
			
			projectService.update(projects); 
			
			rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request,response); 
			
			
		 
			
		}
		
	
		/* Edit PRoject */
		/****************************************************************************************************************/
		if(action.contentEquals("List_my_projects")) {
			
		
			HttpSession session=request.getSession(false);
		

			if(null == session.getAttribute("iduserr")) {
			
		    
		    		rd = request.getRequestDispatcher("signin.jsp");
					rd.forward(request,response); 
		      }
			
		
		      
		      else { 
		    	  int iduser=(int) session.getAttribute("iduserr");
		    	  
		    	  
			List<Project> projects = new ArrayList<Project>();
			
		      
			projects = projectService.getMyProjects(iduser);
			request.setAttribute("projects", projects);
			
			
			rd = request.getRequestDispatcher("my-project.jsp");
			rd.forward(request,response); 
		      }
		}
		

if  (action.contentEquals("redirect_edit_project")) {
			
			int id = Integer.parseInt(request.getParameter("param1"));
			float budget = Float.parseFloat(request.getParameter("param2"));
			String date= request.getParameter("param3");
			
			request.setAttribute("id",id);
			request.setAttribute("budget",budget);
			request.setAttribute("date",date);
			
			
		//	rd=request.getRequestDispatcher("my-project/edit-project/edit-project.jsp");
			rd=request.getRequestDispatcher("edit-project.jsp");
			rd.forward(request,response); 
			
			
			
		}
		
if  (action.contentEquals("edit_project")) {	

		
	int id = Integer.parseInt(request.getParameter("id"));
	String date =request.getParameter("date");
	float goal = Float.parseFloat(request.getParameter("goal"));
	
	

	if(projectService.checkProjectData(date, goal)) {
		Project projects=projectService.getProject(id);
		projects.setGoal(goal);
		projects.setDate(date);
		
		projectService.update(projects); 
		
		rd=request.getRequestDispatcher("index.jsp");
		rd.forward(request,response); 
		
	
	}else {
		String error="Warning:Wrong Data Format";
		request.setAttribute("message", error);
		rd=request.getRequestDispatcher("edit-project.jsp");
		rd.forward(request,response);
	}
	
}
	
	
	/*##################################################################################################################*/
	
	
	
	if(action.contentEquals("logout")) {
       HttpSession session=request.getSession();
      //  session.removeAttribute("login");
       session. invalidate();
        rd=request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
    }
	



	

if  (action.contentEquals("delete_project")) {	

	
	int id = Integer.parseInt(request.getParameter("param1"));
		
	
	projectService.deleteProject(id);
	
	response.sendRedirect("index.jsp");
}
	









		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
