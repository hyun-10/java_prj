package controller.reservation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ReservationDao;

@WebServlet("/cancel.reservation")
public class cancelMemberReservation extends HttpServlet{
	
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	ReservationDao dao = new ReservationDao();
	
	HttpSession session = req.getSession();
	
	String airno2 = (String) req.getParameter("ckbox");
	
	System.out.println(airno2);
	
	dao.deleteReservation(airno2);
	
	resp.sendRedirect("/p4/jsp/login/confirmCancel.jsp");
}
	
}
