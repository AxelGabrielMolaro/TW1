package ar.edu.grupoesfera.cursospring.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PruebaControler {

	@RequestMapping("/ppcualquiercosaa1")
	public ModelAndView p1()
	{
		ModelMap mp=new ModelMap();
		return new ModelAndView("prueba",mp);
	}
}
