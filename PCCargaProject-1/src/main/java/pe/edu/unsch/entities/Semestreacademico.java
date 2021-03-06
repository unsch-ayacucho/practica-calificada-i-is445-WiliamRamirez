package pe.edu.unsch.entities;
// Generated 12-jul-2019 8:19:31 by Hibernate Tools 5.2.10.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Semestreacademico generated by hbm2java
 */
@Entity
@Table(name = "semestreacademico", catalog = "cargabd1")
public class Semestreacademico implements java.io.Serializable {

	private int idsemestreacademico;
	private String numerosemestreacademico;
	private Set<Docente> docentes = new HashSet<Docente>(0);

	public Semestreacademico() {
	}

	public Semestreacademico(int idsemestreacademico, String numerosemestreacademico) {
		this.idsemestreacademico = idsemestreacademico;
		this.numerosemestreacademico = numerosemestreacademico;
	}

	public Semestreacademico(int idsemestreacademico, String numerosemestreacademico, Set<Docente> docentes) {
		this.idsemestreacademico = idsemestreacademico;
		this.numerosemestreacademico = numerosemestreacademico;
		this.docentes = docentes;
	}

	@Id

	@Column(name = "idsemestreacademico", unique = true, nullable = false)
	public int getIdsemestreacademico() {
		return this.idsemestreacademico;
	}

	public void setIdsemestreacademico(int idsemestreacademico) {
		this.idsemestreacademico = idsemestreacademico;
	}

	@Column(name = "numerosemestreacademico", nullable = false, length = 50)
	public String getNumerosemestreacademico() {
		return this.numerosemestreacademico;
	}

	public void setNumerosemestreacademico(String numerosemestreacademico) {
		this.numerosemestreacademico = numerosemestreacademico;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "semestreacademico")
	public Set<Docente> getDocentes() {
		return this.docentes;
	}

	public void setDocentes(Set<Docente> docentes) {
		this.docentes = docentes;
	}

}
