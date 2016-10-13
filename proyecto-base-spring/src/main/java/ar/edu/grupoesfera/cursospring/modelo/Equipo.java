package ar.edu.grupoesfera.cursospring.modelo;

import java.util.HashSet;

public class Equipo implements Comparable<Equipo>{
	private String nombre;
	private Integer cantidadDeGolesEnPartido=0;
	//singletons-----//
	 private static Equipo equipoInstance;
	//--------//
	
	HashSet<Jugador> listaDeJugadores=new HashSet<Jugador>();//voy  a guardar 
	
	//TreeMap<Integer, Jugador> listaDeJusgadores2=new TreeMap<Integer, Jugador>();//la clave va a ser el documento
	
	public Equipo(String nombre)
	{
		this.nombre=nombre;
	}
	
	
	//comparable
		@Override
		public int compareTo(Equipo o) {
			return this.nombre.compareTo(o.nombre);
		}
		
		//hascode e equals x nombre
		
		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + ((nombre == null) ? 0 : nombre.hashCode());
			return result;
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Equipo other = (Equipo) obj;
			if (nombre == null) {
				if (other.nombre != null)
					return false;
			} else if (!nombre.equals(other.nombre))
				return false;
			return true;
		}
		//getesr and seterrs
		public String getNombre() {
			return nombre;
		}

		public void setNombre(String nombre) {
			this.nombre = nombre;
		}

		public Integer getCantidadDeGolesEnPartido() {
			return cantidadDeGolesEnPartido;
		}

		public void setCantidadDeGolesEnPartido(Integer cantidadDeGolesEnPartido) {
			this.cantidadDeGolesEnPartido = cantidadDeGolesEnPartido;
		}

		public HashSet<Jugador> getListaDeJugadores() {
			return listaDeJugadores;
		}

		public void setListaDeJugadores(HashSet<Jugador> listaDeJugadores) {
			this.listaDeJugadores = listaDeJugadores;
		}
	
		
	
	
	
}
