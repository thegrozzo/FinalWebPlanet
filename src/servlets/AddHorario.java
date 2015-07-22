package servlets;
import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import beans.*;

@SuppressWarnings("serial")
public class AddHorario extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String nombre = req.getParameter("nombre");
		String horario = req.getParameter("hora");
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Pelicula.class);
		
			List<Pelicula> pel = (List<Pelicula>) q.execute();
		
		for(int i=0;i<pel.size();i++){
			if(nombre.equals(pel.get(i).getNombre())){
			pel.get(i).setHorario(horario);
			break;
			}
		}		
		resp.getWriter().println("Datos grabados correctamente");
		resp.sendRedirect("controljsp?v=20");
		
		pm.close();
		q.closeAll();
	}
}




