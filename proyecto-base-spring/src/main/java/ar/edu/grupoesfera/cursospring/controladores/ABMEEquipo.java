package ar.edu.grupoesfera.cursospring.controladores;

import javax.inject.Inject;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.grupoesfera.cursospring.modelo.Equipo;
import ar.edu.grupoesfera.cursospring.servicios.EquipoService;
import ar.edu.grupoesfera.cursospring.servicios.TorneoService;

@RestController
public class ABMEEquipo {
	
	@Inject
	private TorneoService  torneoServise;
	
	@RequestMapping("/agregarEquipo")
	public ModelAndView agregarTorneo()
	{
		ModelMap modelAgregarTorneo= new ModelMap();
		modelAgregarTorneo.put("equipo", new Equipo(null));
		
		return new ModelAndView("torneoFormularioAgregar",modelAgregarTorneo);
	}
	
	
	@RequestMapping("/torneoEquipos")
	public ModelAndView mostrarEquiposDeUnTorneoVista (
			@RequestParam ("nombre") String nombre
			)
	{
		ModelMap modeloTorneoEquipos=new ModelMap();
		torneoServise.agregarEquipoAalTorneo(nombre);
		modeloTorneoEquipos.put("listaDeEquipos", torneoServise.mostrarEquipos());
		
		return new ModelAndView("listaDeEquiposEnTorneo",modeloTorneoEquipos);
	}
	
	@RequestMapping(value="/eliminarEquipoTorneo/{equipoAEliminar}",method = RequestMethod.GET)
	public ModelAndView eliminarUnEquipoPorUrl1(
			@PathVariable ("equipoAEliminar") String nombre1
			)
	{
		
		ModelMap modeloEliminar1= new ModelMap();
		torneoServise.eliminarEquipoDeTorneo(nombre1);
		modeloEliminar1.put("listaDeEquipos", torneoServise.mostrarEquipos());
		return new ModelAndView("listaDeEquiposEnTorneo",modeloEliminar1);
	
	}
	
}
