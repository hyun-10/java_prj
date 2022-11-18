package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ReservationDao{

	String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String password="1234";
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	
	private void dbCon() {
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			
			if(con != null) {
				System.out.println("db ok!");
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int getRT(String id) {
		int r_total =0;
		
		
		try {
			dbCon();
			String sql = "select count(*) from reservation_info where r_id =?";
			
			pst=con.prepareStatement(sql);
			pst.setString(1, id);			
			rs = pst.executeQuery();
			
			if(rs.next()) {
				r_total = rs.getInt(1);
			}
			
			rs.close();
			pst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return r_total;
	}
	
	
	
	

	public ArrayList<Reservation> getListPage(String id, int p){
		
		ArrayList<Reservation> list = new ArrayList<>();
		
		int psize = 5;
		int first=(p-1)*psize +1;
		int end=p*psize;
		
		try {
			dbCon();
			String sql = "select rownum num, r_airno, r_reserdate";
					sql += "			from(select rownum num1,r_airno, r_reserdate from reservation_info where r_id =?)";
					sql += "			where num1 between ? and ? ";

			pst= con.prepareStatement(sql);
			pst.setString(1, id);
			pst.setInt(2, first);
			pst.setInt(3,end);
			rs=pst.executeQuery();
			
			
			
			while(rs.next()) {
				
				Reservation r = new Reservation(rs.getInt(1),rs.getString(2),rs.getDate(3));
				list.add(r);
			}
			
			for(Reservation r : list) {
				
				System.out.println(r);
			}
			
			rs.close();
			pst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	public void deleteReservation(String airno) {
		
		try {
			
			dbCon();
			String sql = "delete from reservation_info where R_AIRNO=?";
			
			pst=con.prepareStatement(sql);
			pst.setString(1,airno);
			
			pst.executeUpdate();
			
			pst.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	public static void main(String[] args) {
		
		ReservationDao dao = new ReservationDao();
		
		String id = "admin";
		int total = dao.getRT(id);
		System.out.println(total);
		
		ArrayList<Reservation> list = dao.getListPage(id, 2);
		
		for(Reservation r : list) {
			System.out.println(r);
		}
	}
}






