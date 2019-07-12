package pe.edu.unsch.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import pe.edu.unsch.entities.Docente;



@Repository
public class PracticaDaoImp implements PracticaDao{

	
	@PersistenceContext
	private EntityManager practica;
	
	@SuppressWarnings("unchecked")
	
	@Override
	public List<Docente> retornar() {
		// TODO Auto-generated method stub
		return practica.createQuery("from Docente as d\r\n" + 
				"inner join fetch d.cargaacademica c\r\n" + 
				"left join fetch d.semestreacademico s").getResultList();
	}

}
