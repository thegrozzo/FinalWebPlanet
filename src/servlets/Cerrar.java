package servlets;
import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import beans.*;

@SuppressWarnings("serial")
public class Cerrar extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		HttpSession sesion = req.getSession(true);
		String user=(String) sesion.getAttribute("usuario");
		
		String nombre = req.getParameter("nombre");
		
		String dia = req.getParameter("dia");
		String horario = req.getParameter("horario");
		
		Reserva r = new Reserva(user, dia, horario);
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Pelicula.class);
		
			List<Pelicula> pel = (List<Pelicula>) q.execute();
		
		for(int i=0;i<pel.size();i++){
			if(nombre.equals(pel.get(i).getNombre())){
			pel.get(i).setReserva(r);
			break;
			}
		}		
		pm.makePersistent(r);
		resp.getWriter().println("Datos grabados correctamente");
		resp.sendRedirect("controljsp?v=11");
		
		pm.close();
	}
}