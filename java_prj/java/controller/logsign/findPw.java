package controller.logsign;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDao;

@WebServlet("/findpw")
public class findPw extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html;utf-8");
		resp.setCharacterEncoding("UTF-8");
		
		
		
		HttpSession session = req.getSession();
		
		String m_id = req.getParameter("m_id");
		String m_email = req.getParameter("m_email");
		String m_answer = req.getParameter("m_answer");
		System.out.println(m_email);
		System.out.println(m_answer);
		MemberDao dao = new MemberDao();
		String realid = dao.realId(m_email, m_answer);
		
		if(!(realid.equals(m_id))) {
			session.setAttribute("id", m_id);
			resp.sendRedirect("/p4/jsp/logsign/error/findpw.jsp");
		}else {
		
		session.setAttribute("id", m_id);
		resp.sendRedirect("/p4/jsp/logsign/alterpw.jsp");
		}
	}
}
