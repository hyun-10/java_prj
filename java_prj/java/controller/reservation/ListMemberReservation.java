package controller.reservation;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Reservation;
import model.ReservationDao;

@WebServlet("/list.reservation")
public class ListMemberReservation extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("call");
		
				HttpSession session = req.getSession();
				String id = (String) session.getAttribute("id");
				int page = Integer.parseInt(req.getParameter("p"));
				
				System.out.println(id);
				System.out.println(page);
				ReservationDao dao = new ReservationDao();
				ArrayList<Reservation> list = dao.getListPage(id, page);
				
				
				for(Reservation r : list) {
					System.out.println(r);
				}
				
				
				int ReservationTotal = dao.getRT(id); 
				
				session.setAttribute("r_total", ReservationTotal);
				session.setAttribute("r_list", list);
				session.setAttribute("p", page);
				
				resp.sendRedirect("/p4/jsp/login/viewReservation.jsp");
				
				
//				req.setAttribute("r_total", ReservationTotal);//총레코드수
//				req.setAttribute("r_list", list);//현재리스트
//				req.setAttribute("p",page);//현재페이지
//				req.getRequestDispatcher("/jsp/login/viewReservation.jsp").forward(req, resp);
				
				
	}
}
