package servlets;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.*;

@SuppressWarnings("serial")
public class Cartelera extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		//Query es la BD de javaAPI(jdo)
		Query q = pm.newQuery(Pelicula.class);
		
		try{
			RequestDispatcher rd = getServletContext().getRequestDispatcher("controljsp?v=20");
			rd.forward(req, resp);
			
		}finally{
			q.closeAll();
		}
		
	}
}
