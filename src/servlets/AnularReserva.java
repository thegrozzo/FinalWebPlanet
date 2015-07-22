package servlets;
import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import beans.*;

@SuppressWarnings("serial")
public class AnularReserva extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String usuario = req.getParameter("usuario");
		String nombre = req.getParameter("pelicula");
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Pelicula.class);
		
			List<Pelicula> pel = (List<Pelicula>) q.execute();
		
		for(int i=0;i<pel.size();i++){
			if(nombre.equals(pel.get(i).getNombre())){
			pel.get(i).delReserva(usuario);
			break;
			}
		}		
		resp.getWriter().println("Cambio efectuado");
		resp.sendRedirect("controljsp?v=4");
		
		pm.close();
		q.closeAll();
	}
}
