package mvcModels;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.*;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import entities.Admini;
import entities.Project;
import entities.User;


/**
 * Session Bean implementation class AccountService
 */
@Stateless
@LocalBean
public class AccountService {
	@PersistenceContext(unitName="funder")
	private EntityManager em;
	

    /**
     * Default constructor. 
     */
    public AccountService() {
        // TODO Auto-generated constructor stub
    }
    
    /*#########################################################################################################*/
    public List<User> getAllUsers()
    {
    	List<User> users = new ArrayList<User>();
    	TypedQuery<User> query = em.createNamedQuery("User.findAll",User.class);
    	users = query.getResultList();
		return users;
    }
    /*#########################################################################################################*/
    
    public void addUser(String username,String email,String password) {
    	User user=new User();
    	user.setEmail(email);
    	user.setPassword(password);
    	user.setUsernameClient(username);
    	try {
    	em.persist(user);
    	}
    	catch(Exception e) {
    		System.out.println("err");
    	}
    }
    
    /*#########################################################################################################*/
    
    public int deleteUser(String username) {
    	TypedQuery<User>query=em.createNamedQuery("User.deleteByName",User.class);
    	query.setParameter(1, username);
    	return(query.executeUpdate());
    	
    }
    
    /*#########################################################################################################*/
    
    public boolean checkUserData(String username,String email) {
    	
    	return (Pattern.matches("[a-zA-Z]{2,15}@[a-zA-Z]{2,6}.[a-zA-Z]{2,3}", email) &&
    			Pattern.matches("[a-zA-Z]{3,10}", username));
    }
    
 
    
    
    /*#########################################################################################################*/
    
    public boolean checkAvailability(String username) {
        List<Admini> admini=new ArrayList<Admini>();
        TypedQuery<Admini> query2=em.createNamedQuery("Admini.findByName",Admini.class);
        query2.setParameter(1,username);
        admini=query2.getResultList();
        if(admini.isEmpty()) {
            List<User> user= new ArrayList<User>();
            TypedQuery<User> query = em.createNamedQuery("User.findByName",User.class);
            query.setParameter(1, username);
            user=query.getResultList();
            if(user.isEmpty()) {
            return true;
            }
        }
        return false;
    }
	
    
	 /*#########################################################################################################*/
	
	public boolean checkSignin(String username,String password) {
		List<User> user=new ArrayList<User>();
		TypedQuery<User> query=em.createNamedQuery("User.findByNamePass",User.class);
		query.setParameter(1,username);
		query.setParameter(2,password);
		user=query.getResultList();
		if(user.isEmpty())
			return false;
		return true;
	}
	
	 /*#########################################################################################################*/
	
/*	 public int getIDUser(String username)
	    {
		    List<User> users= new ArrayList<User>();
		    TypedQuery<User> query = em.createNamedQuery("User.findIdUser",User.class);
	    	query.setParameter(1, username);
	    	users = query.getResultList();

	    	User first = users.get(0);
	    	int k=first.getIdUser();
			return k;
	    }  */
	
	public User getIDUser(String username)
    {
	    List<User> users= new ArrayList<User>();
	    TypedQuery<User> query = em.createNamedQuery("User.findIdUser2",User.class);
    	query.setParameter(1, username);
    	users = query.getResultList();

    	User first = users.get(0);
    	
		return first;
    }
	
	 /*#########################################################################################################*/
	/*  public User getAccount(String username) {
	    	
	    	User p = (User) em.createNamedQuery("User.findByName",User.class);
	    	query.setParameter(1,username);
	    	return p;
	    }    //retourne tous le projet
	    
	    public void update(Project project) {
	        em.merge(project);
	    } */
	    
	/******************************************************************************************************************/    
	/* Admin */
	    
	    public int getId(String username) {
	        User user=new User();
	        TypedQuery<User>query=em.createNamedQuery("User.findByName", User.class);
	        query.setParameter(1, username);
	        user=query.getSingleResult();
	        return user.getIdUser();
	    }
	    
	    //singup (verif)
	    public boolean checkIfAdmin(String username) { 
	        List<Admini> admin=new ArrayList<Admini>();
	        TypedQuery<Admini> query=em.createNamedQuery("Admini.findByName",Admini.class);
	        query.setParameter(1,username);
	        admin=query.getResultList();
	        return(!admin.isEmpty());
	    }
	    
	    //signin (verif)
	    public boolean checkAdminSignin(String username,String password) { //signin
	        List<Admini> user=new ArrayList<Admini>();
	        TypedQuery<Admini> query=em.createNamedQuery("Admini.findByNamePass",Admini.class);
	        query.setParameter(1,username);
	        query.setParameter(2,password);
	        user=query.getResultList();
	        if(user.isEmpty())
	            return false;
	        return true;
	    }
	    
	    
	    
	
	
	
	
	
	
	
	

}
