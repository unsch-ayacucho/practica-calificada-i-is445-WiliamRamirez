package pe.edu.unsch.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import pe.edu.unsch.entities.Semestreacademico;


@Repository
public class PracticaDaoImp implements PracticaDao{

	
	@PersistenceContext
	private EntityManager practica;
	
	@SuppressWarnings("unchecked")
	
	@Override
	public List<Semestreacademico> retornar() {
		// TODO Auto-generated method stub
		return practica.createQuery("from Semestreacademico s join fetch s.docente c ").getResultList();
	}

}
