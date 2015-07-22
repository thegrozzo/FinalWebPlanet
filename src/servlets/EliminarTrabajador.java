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
public class EliminarTrabajador extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/plain");		
		
		if( req.getParameter("id")!=null ){
			String id = req.getParameter("id");
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Query q = pm.newQuery(Usuariotra.class);
			q.setFilter("id == idParam");
			q.declareParameters("String idParam");	
			try{
				q.deletePersistentAll(id);
				resp.getWriter().println("Se han borrado personas.");
				resp.sendRedirect("controljsp?v=18");
  			}catch(Exception e){
					System.out.println(e);
					resp.getWriter().println("No se han podido borrar.");
					resp.sendRedirect("controljsp?v=18");
			}finally{
				q.closeAll();
				pm.close();
			}			
		}else {		
			resp.getWriter().println("No se ha especificado el nombre.");
			resp.sendRedirect("controljsp?v=18");
		}		
	}

}