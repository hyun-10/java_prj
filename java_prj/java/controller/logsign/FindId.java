package controller.logsign;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDao;

@WebServlet("/findid")
public class FindId extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberDao dao = new MemberDao();
		
		HttpSession session = req.getSession();
		
		String m_name = req.getParameter("m_name");
		String m_socialcode = req.getParameter("m_socialcode");
		String m_email = req.getParameter("m_email");
		
		
		String m_id = dao.findId(m_name, m_socialcode, m_email);
		if(m_id =="") {
			session.setAttribute("name", m_name);
			resp.sendRedirect("jsp/logsign/error/findid.jsp");
		}else {
		session.setAttribute("id", m_id);
		resp.sendRedirect("jsp/logsign/confirm/findid.jsp");}
		
	}
}
