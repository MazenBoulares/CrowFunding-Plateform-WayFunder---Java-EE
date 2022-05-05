package mvcModels;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import entities.Category;
import entities.Project;

/**
 * Session Bean implementation class ProjectService
 */
@Stateless
@LocalBean
public class ProjectService {
	@PersistenceContext(unitName="funder")
	private EntityManager em;

    /**
     * Default constructor. 
     */
    public ProjectService() {
        // TODO Auto-generated constructor stub
    }
    
    public List<Project> getOnHoldProjects(){
    	List<Project> projects=new ArrayList<Project>();
    	TypedQuery<Project> query = em.createNamedQuery("Project.findOnHold",Project.class);
    	projects = query.getResultList();
    	return projects;
    	
    }
    
    
    
    public List<Project> getAllProjects()
    {
    	List<Project> projects = new ArrayList<Project>();
    	TypedQuery<Project> query = em.createNamedQuery("Project.findAll",Project.class);
    	projects = query.getResultList();
		return projects;
    } 
    
    
    
    public List<Project> getAcceptedProjects()
    {
    	List<Project> projects = new ArrayList<Project>();
    	TypedQuery<Project> query = em.createNamedQuery("Project.findAccepted",Project.class);
    	projects = query.getResultList();
		return projects;
    } 
    
    
    
    public List<Project> getAcceptedProjectsCat(int id)
    {
    	List<Project> projects = new ArrayList<Project>();
    	
    	TypedQuery<Project> query = em.createNamedQuery("Project.findByCat",Project.class);
    	query.setParameter(1,id);
    	projects = query.getResultList();
    	
		return projects;
    } 
    
    
    
    
    public void rejectProject(String id) {
    	TypedQuery<Project> query=em.createNamedQuery("Project.deleteProject",Project.class);
    	query.setParameter(1,Integer.parseInt(id));
    	query.executeUpdate();
    }
    
    public void acceptProject(String id) {
    	TypedQuery<Project> query=em.createNamedQuery("Project.acceptProject",Project.class);
    	query.setParameter(1,Integer.parseInt(id));
    	query.executeUpdate();
    }
    
    
    
    
    
    public void addProject(String date,String description,float goal,String image,
    		String title,int iduser,int libCat){
   	Project project=new Project();
   
    Category cat=em.find(Category.class,libCat);
    	project.setDate(date);
    	project.setDescription(description);
    	project.setGoal(goal); 
    	project.setState("0");
    	project.setIdUser(iduser);
    	
    	project.setCategory(cat); 
    	
    	project.setTitle(title);
    	
    	try {
    	em.persist(project);
    	}
    	catch(Exception e) {
    		System.out.println("err");
    	}
    } 
    
   /*******************************************************************************/ 
    public Project getProject(int id) {
    	
    	Project p = em.find(Project.class, id);
    	return p;
    }    //retourne tous le projet
    
    public void update(Project project) {
        em.merge(project);
    }
    
    
    /********************************************************************************/
    
    public void fundProject(String id) {
    	TypedQuery<Project> query=em.createNamedQuery("Project.acceptProject",Project.class);
    	query.setParameter(1,Integer.parseInt(id));
    	query.executeUpdate();
    }
    
    
    /*###############################################################################*/
    
    public List<Project>getMyProjects(int id) {
 
    	List<Project> projects = new ArrayList<Project>();
    	TypedQuery<Project> query = em.createNamedQuery("Project.findUser",Project.class);
    	query.setParameter(1,id);
    	projects = query.getResultList();
		return projects;
    }
    
    /*###############################################################################*/
    
    public void deleteProject(int id) {
  	  Project p = em.find(Project.class, id);

      em.remove(p);
     
  }
    
    
  /************************************************************************************/  
   public boolean checkProjectData(String date,float goal) {
    	
    	return (Pattern.matches("[0-9]{2}/[0-9]{2}/[0-9}]{4}", date) && 
    			(goal>0));
    }
   
   
   
 /****************************************************************************************/
  
   //delete projects marboutin bl admin
   public void deleteUserProjects(int id) {
       TypedQuery<Project> query=em.createNamedQuery("Project.deleteUserProjects",Project.class);
       query.setParameter(1,id);
       query.executeUpdate();
   }
   
   
   
   
   

   
   
   
}
