package servlets;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.*;
@SuppressWarnings("serial")
public class EliminarCliente extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/plain");		
		
		if( req.getParameter("dni")!=null ){
			String dni = req.getParameter("dni");
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Query q = pm.newQuery(Usuarios.class);
			q.setFilter("dni == dniParam");
			q.declareParameters("String dniParam");	
			try{
				q.deletePersistentAll(dni);
				resp.getWriter().println("Se han borrado personas.");
				resp.sendRedirect("controljsp?v=19");
  			}catch(Exception e){
					System.out.println(e);
					resp.getWriter().println("No se han podido borrar.");
					resp.sendRedirect("controljsp?v=19");
			}finally{
				q.closeAll();
				pm.close();
			}			
		}else {		
			resp.getWriter().println("No se ha especificado el nombre.");
			resp.sendRedirect("controljsp?v=19");
		}		
	}

}