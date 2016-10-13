package ar.edu.grupoesfera.cursospring.servicios;

import java.util.HashSet;

import ar.edu.grupoesfera.cursospring.modelo.Jugador;

public interface EquipoService {

	
	//agrega
	public void agregarJugador(String nombre, String apellido, Integer documento)throws Exception;

	
	//muestra la lista
	public HashSet<Jugador> MostrarJugadores();
	
	//busca uno específico
	public Jugador buscarJugador(Integer documento)throws Exception;

	//elimino
	public void eliminarJugador(Integer documento)throws Exception;
}
