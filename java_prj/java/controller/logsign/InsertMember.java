package controller.logsign;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Member;
import model.MemberDao;

@WebServlet("/insertmember")
public class InsertMember extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberDao dao = new MemberDao();
		
		Member m = new Member(
				req.getParameter("m_id"),
				req.getParameter("m_pw"),
				req.getParameter("m_name"),
				req.getParameter("m_socialcode"),
				req.getParameter("m_email"),
				req.getParameter("m_tel"),
				req.getParameter("m_answer")
				);
		
		dao.insertMember(m);
		
		resp.setContentType("text/html;utf-8");
		resp.setCharacterEncoding("UTF-8");
		
		String name=req.getParameter("m_name");
		String id=req.getParameter("m_id");
		
		HttpSession session = req.getSession();
		
		session.setAttribute("name", name);
		session.setAttribute("id", id);
		
		resp.sendRedirect("/p4/jsp/logsign/confirm/signin.jsp");
	}
	
	
}
