package controller.logsign;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AirNoDao;

@WebServlet("/insertAirNo")
public class insertAirNo extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;utf-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out=resp.getWriter();
		HttpSession session = req.getSession();
		
		
		AirNoDao dao = new AirNoDao();
		
		// 문자열로 넘겨줬던 seat 정보를 배열로 변환
		String[] seat = req.getParameter("seatt").split("\\|");
		
		boolean result=false;
		
		result=dao.ck(	
			session.getAttribute("id").toString(), 
			req.getParameter("dpsite"), 
			req.getParameter("arsite"), 
			req.getParameter("dpdate"),
			req.getParameter("dptime"), 
			req.getParameter("ardate"),
			req.getParameter("artime"),
			seat);
		if(result==true) {
			
			out.print("<script>alert('이미 해당 좌석은 예약되었으므로 다시 예약바랍니다.'); window.location='jsp/login/home.jsp'</script>");
			
		}else {
			
		dao.insertAirNo(
			session.getAttribute("id").toString(), 
			req.getParameter("dpsite"), 
			req.getParameter("arsite"), 
			req.getParameter("dpdate"),
			req.getParameter("dptime"), 
			req.getParameter("ardate"),
			req.getParameter("artime"),
			seat
		);
		out.print("<script>alert('예약에 성공하였습니다.'); window.location='jsp/login/home.jsp'</script>");

	};
}
}
