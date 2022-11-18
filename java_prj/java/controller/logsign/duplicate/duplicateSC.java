package controller.logsign.duplicate;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDao;

@WebServlet("/duplicateSC")
public class duplicateSC extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String sc = req.getParameter("m_socialcode");
//		System.out.println("sc = "+sc); // 확인완료
		
		
		MemberDao dao = new MemberDao();
		boolean result = dao.duplicatedSC(sc);
		System.out.println("result=" + result);
		
		PrintWriter out = resp.getWriter();
		
		//1.중복된 상황, 0.사용가능
		if(result) {
			out.println(1);
		}else {
			out.println(0);
		}
		
	}
	

}
