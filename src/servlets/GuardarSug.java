package servlets;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import beans.Sugerencia;
@SuppressWarnings("serial")
public class GuardarSug extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String email = req.getParameter("email");
		String comentario = req.getParameter("comentario");
		
		Sugerencia p = new Sugerencia(email, comentario);
		if(email.equals("") || comentario.equals("")){
			resp.getWriter().println("Faltan ingresar datos.");
			resp.getWriter().println("<a href='controljsp?v=16'>Volver a intentar</a>");
		}else{
			PersistenceManager pm = PMF.get().getPersistenceManager();
			try{
				pm.makePersistent(p);
				resp.getWriter().println("<p>Sugerencia Enviada Correctamente</p>");
				resp.getWriter().println("<a href='index.jsp'>Regresar a Inicio</a>");
				
			}catch(Exception e){
				System.out.println(e);
				resp.getWriter().println("Ocurrio un error, <a href='controljsp?v=16'>Vuelva a intentarlo</a> " + e);
			}finally{
				pm.close();
			}
		}
	}
}