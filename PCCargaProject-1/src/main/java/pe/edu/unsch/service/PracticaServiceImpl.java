package pe.edu.unsch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pe.edu.unsch.dao.PracticaDao;
import pe.edu.unsch.entities.Semestreacademico;
@Service
public class PracticaServiceImpl implements PracticaService{

	
	
	@Autowired
	private PracticaDao practicaDao;
	
	@Override
	@Transactional(readOnly=true)
	public List<Semestreacademico> retornar() {
		// TODO Auto-generated method stub
		return practicaDao.retornar();
	}

}
