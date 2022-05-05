package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the fund database table.
 * 
 */
@Entity
@NamedQuery(name="Fund.findAll", query="SELECT f FROM Fund f")
public class Fund implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_fund")
	private int idFund;

	@Column(name="id_user")
	private int idUser;

	private float sum;

	//bi-directional many-to-one association to Project
	@ManyToOne
	@JoinColumn(name="id_project")
	private Project project;

	public Fund() {
	}

	public int getIdFund() {
		return this.idFund;
	}

	public void setIdFund(int idFund) {
		this.idFund = idFund;
	}

	public int getIdUser() {
		return this.idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public float getSum() {
		return this.sum;
	}

	public void setSum(float sum) {
		this.sum = sum;
	}

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

}