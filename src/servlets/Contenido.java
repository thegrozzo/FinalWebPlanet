package servlets;
import java.util.List;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import beans.*;

public class Contenido {
	public static List<Usuarios> lista(){
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query query = pm.newQuery(Usuarios.class);
		return (List<Usuarios>) query.execute();
	}
	public static List<Usuariotra> listatra(){
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query query = pm.newQuery(Usuariotra.class);
		return (List<Usuariotra>) query.execute();
	}
	public static List<Reserva> listaRes(){
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query query = pm.newQuery(Reserva.class);
		return (List<Reserva>) query.execute();
	}
	public static List<Sugerencia> listaSug(){
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query query = pm.newQuery(Sugerencia.class);
		return (List<Sugerencia>) query.execute();
	}
	public static List<Pelicula> listaPel(){
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query query = pm.newQuery(Pelicula.class);
		return (List<Pelicula>) query.execute();
	}
	
}
