package ar.edu.grupoesfera.cursospring.servicios;

import java.util.HashSet;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import ar.edu.grupoesfera.cursospring.modelo.Equipo;
import ar.edu.grupoesfera.cursospring.modelo.Jugador;

@Service("EquipoService")
public class EquipoServiceImpl implements EquipoService {

	
	
	//lo agregre pq no hay bdd
	public Equipo e1=new Equipo("alte");
	
	//public Equipo e1; ver
	
	@Inject 
	public TorneoService torneoService;
	
	public EquipoServiceImpl() {
		
	}
	
	//agrego a que equipo le agrego
	
	public void seleccionarEquipoATrabajar(String nombre) throws Exception
	{
		this.e1=torneoService.buscarUnEquipoDeterminado(nombre);
	}
	
	@Override
	public void agregarJugador(String nombre,String apellido,Integer documento) throws Exception
	{
		Jugador jugadorAAgregrar=new Jugador(nombre, apellido, documento);
		
		

			if(e1.getListaDeJugadores().contains(jugadorAAgregrar))
			{
				throw new Exception("El jugador que quieres agregar ya existe");
			}
			//agrego
			else
			{
				e1.getListaDeJugadores().add(new Jugador(nombre, apellido, documento));
			}
		
		
	}

	@Override
	public HashSet<Jugador> MostrarJugadores() {

		return e1.getListaDeJugadores();
	}

	@Override
	public Jugador buscarJugador(Integer documento) throws Exception {
		
		Jugador jugadorBuscado=new Jugador(null	, null, documento);
		
		for(Jugador miJugador :e1.getListaDeJugadores())
		{
			if(miJugador.getDocumento().equals(jugadorBuscado.getDocumento()))
			{
				return miJugador;

			}

		}
		throw new Exception("jugador no encontrado");

	}

	@Override
	public void eliminarJugador(Integer documento)throws Exception 
	{
		
		Jugador jugadorBuscado = new Jugador(null, null, documento);
		
		if(e1.getListaDeJugadores().contains(jugadorBuscado))//busca un jug
		{
			e1.getListaDeJugadores().remove(jugadorBuscado);//si existe lo elimino
		}
		else//si no lo agrega
		{
			throw new Exception("el jugador buscado no exite");//si no existe exepcion
		}
		
		
		
			
	}

		
}
