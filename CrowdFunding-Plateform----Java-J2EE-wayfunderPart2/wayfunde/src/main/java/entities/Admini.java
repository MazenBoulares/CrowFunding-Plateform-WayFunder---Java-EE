package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the adminis database table.
 * 
 */
@Entity
@Table(name="adminis")
@NamedQueries({
@NamedQuery(name="Admini.findByName",query="SELECT a from Admini a where a.usernameAdmin=?1"),
@NamedQuery(name="Admini.findAll", query="SELECT a FROM Admini a"),
@NamedQuery(name="Admini.findByNamePass",query="SELECT a from Admini a where a.usernameAdmin=?1 and a.password=?2")
})
public class Admini implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_admin")
	private int idAdmin;

	private String password;

	@Column(name="username_admin")
	private String usernameAdmin;

	public Admini() {
	}

	public int getIdAdmin() {
		return this.idAdmin;
	}

	public void setIdAdmin(int idAdmin) {
		this.idAdmin = idAdmin;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsernameAdmin() {
		return this.usernameAdmin;
	}

	public void setUsernameAdmin(String usernameAdmin) {
		this.usernameAdmin = usernameAdmin;
	}

}