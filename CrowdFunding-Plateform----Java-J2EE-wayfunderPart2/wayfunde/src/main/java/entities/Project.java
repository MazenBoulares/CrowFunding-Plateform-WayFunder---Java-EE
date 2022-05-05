package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the project database table.
 * 
 * 
 */
@Entity
@NamedQueries({
@NamedQuery(name="Project.deleteUserProjects",query="DELETE From Project p where p.idUser=?1"),	
@NamedQuery(name="Project.findAccepted", query="SELECT p FROM Project p where p.state='1'"),		
@NamedQuery(name="Project.findUser", query="SELECT p FROM Project p where p.idUser=?1"),	
@NamedQuery(name="Project.findAll", query="SELECT p FROM Project p"),
@NamedQuery(name="Project.findOnHold",query="SELECT p from Project p where p.state='0'"),
@NamedQuery(name="Project.deleteProject",query="DELETE from Project p where p.idProject=?1"),
@NamedQuery(name="Project.acceptProject",query="UPDATE Project p set p.state='1' where p.idProject=?1"),
@NamedQuery(name="Project.findByCat",query="SELECT p FROM Project p where p.category.idCat=?1 and p.state='1'")

})
public class Project implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_project")
	private int idProject;

	/*@Temporal(TemporalType.DATE)*/
	private String date;

	private String description;

	private float goal;

	@Column(name="id_user")
	private int idUser;

	private String image;


	private String state;

	private String title;
	
	private float sum2;

	//bi-directional many-to-one association to Fund
	@OneToMany(mappedBy="project", fetch=FetchType.EAGER)
	private List<Fund> funds;

	//bi-directional many-to-one association to Category
	@ManyToOne
	@JoinColumn(name="id_cat")
	private Category category;

	public Project() {
	}

	public int getIdProject() {
		return this.idProject;
	}

	public void setIdProject(int idProject) {
		this.idProject = idProject;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getGoal() {
		return this.goal;
	}

	public void setGoal(float goal) {
		this.goal = goal;
	}

	public int getIdUser() {
		return this.idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}


	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	public float getSum2() {
		return this.sum2;
	}

	public void setSum2(float sum2) {
		this.sum2 = sum2;
	}

	public List<Fund> getFunds() {
		return this.funds;
	}

	public void setFunds(List<Fund> funds) {
		this.funds = funds;
	}

	public Fund addFund(Fund fund) {
		getFunds().add(fund);
		fund.setProject(this);

		return fund;
	}

	public Fund removeFund(Fund fund) {
		getFunds().remove(fund);
		fund.setProject(null);

		return fund;
	}

	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	
}