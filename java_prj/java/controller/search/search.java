package controller.search;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.SearchAir;
import model.SearchAirDao;

@WebServlet("/search")
public class search extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;UTF-8");
		SearchAirDao dao=new SearchAirDao();
		
		String p_=request.getParameter("p");
		int p=1;
		if(p_!=null) {
			p=Integer.parseInt(p_);
		}
		
		String dpdate=request.getParameter("dpdate");
		String dptime=request.getParameter("dptime");
		String arsite=request.getParameter("arsiteh");
		String dpsite=request.getParameter("dpsiteh");
		System.out.println(dptime);
		
		ArrayList<SearchAir> list = dao.getlists(p, dpsite, arsite, dpdate, dptime);
		int totpage=dao.totPage(dpsite, arsite, dpdate, dptime);
		
		request.setAttribute("list1", list);
		request.setAttribute("totpage", totpage);
		request.setAttribute("p", p);
		request.getRequestDispatcher("jsp/login/login_search.jsp").forward(request, response);
		
	}
	
}