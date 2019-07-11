package pe.edu.unsch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pe.edu.unsch.service.PracticaService;

@Controller
@RequestMapping("/view")

public class VistaController {

	
	
	
	@Autowired
	private PracticaService practicaService;
	
	@GetMapping("/vista")
	public String vista(Model model) {
		
		model.addAttribute("practica", practicaService.retornar());
		return "views/vista";
		
		
		
	}
}
