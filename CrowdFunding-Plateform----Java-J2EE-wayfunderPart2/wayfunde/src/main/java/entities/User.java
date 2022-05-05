package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the user database table.
 * 
 */
@Entity
@NamedQueries({ 
@NamedQuery(name="User.findIdUser2", query="SELECT u FROM User u where u.usernameClient= ?1"),
@NamedQuery(name="User.findIdUser", query="SELECT u.idUser FROM User u where u.usernameClient= ?1"),	
@NamedQuery(name="User.findAll", query="SELECT u FROM User u"),
@NamedQuery(name="User.findByName",query="select u FROM User u where u.usernameClient= ?1"),
@NamedQuery(name="User.findByNamePass",query="select u from User u where u.usernameClient= ?1 and u.password= ?2"),
@NamedQuery(name="User.deleteByName",query="delete from User u where u.usernameClient = ?1")
})
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_user")
	private int idUser;

	private String password;
	
	private String email;

	@Column(name="username_client")
	private String usernameClient;

	public User() {
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getIdUser() {
		return this.idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsernameClient() {
		return this.usernameClient;
	}

	public void setUsernameClient(String usernameClient) {
		this.usernameClient = usernameClient;
	}

}