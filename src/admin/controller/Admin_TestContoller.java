package admin.controller;

import java.io.IOException;
import java.net.http.HttpConnectTimeoutException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/admin/test")
public class Admin_TestContoller extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String top= (String)req.getAttribute("top");//일단 받아봐 null이라도
		String content = (String)req.getAttribute("content");
		String left = (String)req.getAttribute("left");
		if(top==null) {
			top="/admin/admin_menu/header.jsp"; 
		}
		if(content==null) {
			content="/admin/admin_content/main.jsp";
		}
		if(left==null) {
			left="/admin/admin_menu/left.jsp";
		}
		String cp = req.getContextPath();
		ServletContext application = getServletContext();
		application.setAttribute("cp", cp);
		req.setAttribute("top", top); 
		req.setAttribute("content", "/admin/admin_content/test.jsp");
		req.setAttribute("left", left);
		req.getRequestDispatcher("/admin/admin_content/index.jsp").forward(req, resp);
	}
}
