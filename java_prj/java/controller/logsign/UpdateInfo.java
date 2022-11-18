package controller.logsign;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDao;

@WebServlet("/updateinfo")
public class UpdateInfo extends HttpServlet {
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;utf-8");
	
		
		
		
		String m_id = (String)request.getParameter("m_id");
		String m_pw = (String)request.getParameter("m_pw");
		String m_name = (String)request.getParameter("m_name");
		String m_tel = (String)request.getParameter("m_tel");
		String m_email = (String)request.getParameter("m_email");
		
		//System.out.println(m_id);
		//System.out.println(m_pw);
		//System.out.println(m_name);
		//System.out.println(m_tel);
		//System.out.println(m_email);
		
		MemberDao dao = new MemberDao();
		dao.updateInfo(m_id, m_pw, m_name, m_tel, m_email);
		
		response.sendRedirect("/p4/jsp/login/confirmAlterMember.jsp");
		
		
		
	}

}
