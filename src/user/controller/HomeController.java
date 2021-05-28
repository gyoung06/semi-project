package user.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class HomeController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String top=(String)req.getAttribute("top");
		String content=(String)req.getAttribute("content");
		String bottom=(String)req.getAttribute("bottom");
		if(top==null) {
			top="/header.jsp";
		}
		if(content==null) {
			content="/home.jsp";
		}
		if(bottom==null) {
			bottom="/footer.jsp";
		}
		req.setAttribute("top", top);
		req.setAttribute("content", content);
		req.setAttribute("bottom", bottom);
		
		String cp=req.getContextPath();
		ServletContext application=getServletContext();
		application.setAttribute("cp", cp);

		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}
}
