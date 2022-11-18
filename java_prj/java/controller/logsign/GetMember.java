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

@WebServlet("/getmember")
public class GetMember extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;utf-8");
		
		MemberDao dao = new MemberDao();
		
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("id");
		
		System.out.println(id);
		
		
		Member m = dao.getMember(id);
		
		System.out.println(m);
		
		session.setAttribute("member", m);	
		response.sendRedirect("/p4/jsp/login/viewMember.jsp");
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		MemberDao dao = new MemberDao();
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		
		Member m = dao.getMember(id);
		
		session.setAttribute(id, m);
	}
	
	

}
