package controller.logsign;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDao;

@WebServlet("/loginok")
public class login extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html;utf-8");
		resp.setCharacterEncoding("UTF-8");
		
		String id =req.getParameter("m_id");
		String pw = req.getParameter("m_pw");
		
		MemberDao dao = new MemberDao();
		
		HttpSession session= req.getSession();
		
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		if(!(dao.duplicatedID(id))) {//아이디가 없을때

			String result="회원님의 아이디를 찾을 수 없습니다.";
			
			session.setAttribute("result", result);
			
			resp.sendRedirect("jsp/logsign/error/login.jsp");
			
		}else if(!(dao.confirmMember(id, pw))){//비밀번호가 일치하지 않을 때,
			
			String result="비밀번호가 일치하지 않습니다.";
			
			session.setAttribute("result", result);
			
			resp.sendRedirect("jsp/logsign/error/login.jsp");
			
		}else {
		resp.sendRedirect("jsp/login/home.jsp");
		}
		
		
		
	}
}
