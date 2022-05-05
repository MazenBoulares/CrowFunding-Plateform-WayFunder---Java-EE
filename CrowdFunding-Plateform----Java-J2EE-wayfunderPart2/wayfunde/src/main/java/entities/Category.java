package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the categories database table.
 * 
 */
@Entity
@Table(name="categories")
@NamedQuery(name="Category.findAll", query="SELECT c FROM Category c")
public class Category implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_cat")
	private int idCat;

	@Column(name="lib_cat")
	private String libCat;

	//bi-directional many-to-one association to Project
	@OneToMany(mappedBy="category", fetch=FetchType.EAGER)
	private List<Project> projects;

	public Category() {
	}

	public int getIdCat() {
		return this.idCat;
	}

	public void setIdCat(int idCat) {
		this.idCat = idCat;
	}

	public String getLibCat() {
		return this.libCat;
	}

	public void setLibCat(String libCat) {
		this.libCat = libCat;
	}

	public List<Project> getProjects() {
		return this.projects;
	}

	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}

	public Project addProject(Project project) {
		getProjects().add(project);
		project.setCategory(this);

		return project;
	}

	public Project removeProject(Project project) {
		getProjects().remove(project);
		project.setCategory(null);

		return project;
	}

}