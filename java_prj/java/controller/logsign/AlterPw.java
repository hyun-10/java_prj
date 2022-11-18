package controller.logsign;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDao;

@WebServlet("/alterpw.unlogin")
public class AlterPw extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;utf-8");
		
		MemberDao dao = new MemberDao();
		
		HttpSession session = req.getSession();
		
		String id = (String)session.getAttribute("id");
		String pw = req.getParameter("m_pw");
		
		session.setAttribute("pw", pw);
		
		dao.alterPw(id,pw);
		
		resp.sendRedirect("jsp/logsign/confirm/alterpw.jsp");
	}
}
