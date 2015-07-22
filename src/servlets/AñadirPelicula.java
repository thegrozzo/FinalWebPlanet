package servlets;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import beans.*;
@SuppressWarnings("serial")
public class AñadirPelicula extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String nombre = req.getParameter("nombre");
		String autor = req.getParameter("autor");
		String idioma = req.getParameter("idioma");
		
		Pelicula p = new Pelicula(nombre, autor,idioma);
		if(nombre.equals("") || autor.equals("")){
			resp.getWriter().println("Faltan ingresar datos.");
			resp.getWriter().println("<a href='controljsp?v=16'>Volver a intentar</a>");
		}else{
			PersistenceManager pm = PMF.get().getPersistenceManager();
			try{
				pm.makePersistent(p);
				resp.getWriter().println("<p>Pelicula guardada correctamente</p>");
				resp.getWriter().println("<a href='controljsp?v=20'>Regresar</a>");
				
			}catch(Exception e){
				System.out.println(e);
				resp.getWriter().println("Ocurrio un error, <a href='controljsp?v=20'>Vuelva a intentarlo</a> " + e);
			}finally{
				pm.close();
			}
		}
	}
}