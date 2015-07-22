package servlets;

import java.util.*;
import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import beans.Pelicula;

@SuppressWarnings("serial")
public class RegistroReserva extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String nombre = req.getParameter("nombre");
		String dia = req.getParameter("dia");
		String horario = req.getParameter("horario");
		String combo = req.getParameter("combo");
	ArrayList<String> a = new ArrayList<String>();
		Pelicula p = new Pelicula(nombre, dia, null);
		if(nombre.equals("") || dia.equals("") || horario.equals("") || combo.equals("") ){
			resp.getWriter().println("Faltan ingresar datos.");
			resp.getWriter().println("<a href='controljsp?v=15'>Volver a intentar</a>");
		}else{
		
			PersistenceManager pm = PMF.get().getPersistenceManager();
			try{
				pm.makePersistent(p);
				resp.getWriter().println("Datos grabados correctamente");
				resp.sendRedirect("controljsp?v=4");
				
			}catch(Exception e){
				System.out.println(e);
				resp.getWriter().println("Ocurrio un error, <a href='controljsp?v=15'>vuelva a intentarlo</a> " + e);
			}finally{
				pm.close();
			}
		}
	}
}




