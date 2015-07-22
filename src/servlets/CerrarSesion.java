package servlets;

import java.io.IOException;

import javax.servlet.http.*;


@SuppressWarnings("serial")
public class CerrarSesion extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		HttpSession sesion= req.getSession();
		
		sesion.invalidate(); //Cierra la sesion
		resp.sendRedirect("index.jsp");
	}
}