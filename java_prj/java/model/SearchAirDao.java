package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class SearchAirDao {

	String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String password="1234";
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	
	public int totPage(String dpsite, String arsite, String dpdate, String dptime) {
		int cnt=0;
		dbCon();
		String sql="select count(*) from airlist_info where a_depart_site=? and a_arrival_site=? and a_depart_date=? and a_depart_time=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, dpsite);
			pst.setString(2, arsite);
			pst.setString(3, dpdate);
			pst.setString(4, dptime);
			rs=pst.executeQuery();
			while(rs.next()) {
				cnt=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return cnt;
	}
	
	public ArrayList<SearchAir> getlists(int p, String dpsite, String arsite, String dpdate, String dptime){
		
		int pageSize = 5;
		int start =(p-1)*pageSize +1;
		int end = p * pageSize;
		
		ArrayList<SearchAir> list=new ArrayList<>();
		try {
			dbCon();	
			String sql="select a_airno, a_depart_site, to_char(a_depart_date, 'yyyy-mm-dd'), a_depart_time, a_arrival_site, to_char(a_arrival_date, 'yyyy-mm-dd'), a_arrival_time, a_seat from";
					sql += "(select rownum num, a_airno, a_depart_site, a_depart_date, a_depart_time, a_arrival_site, a_arrival_date, a_arrival_time, a_seat from airlist_info where a_depart_site=? and a_arrival_site=? and a_depart_date=? and a_depart_time=?)";
					sql += "where num between ? and ?";
			pst=con.prepareStatement(sql);
			pst.setString(1, dpsite);
			pst.setString(2, arsite);
			pst.setString(3, dpdate);
			pst.setString(4, dptime);
			pst.setInt(5, start);
			pst.setInt(6, end);
			rs=pst.executeQuery();
			
			

			while(rs.next()) {
			SearchAir s=new SearchAir(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
			list.add(s);
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
	
	public ArrayList<SearchAir> getlist(String dpsite, String arsite, String dpdate, String dptime){
		
		String sql="select a_airno, a_depart_site, to_char(a_depart_date, 'yyyy-mm-dd'), a_depart_time, a_arrival_site, to_char(a_arrival_date, 'yyyy-mm-dd'), a_arrival_time, a_seat from airlist_info where a_depart_site=? and a_arrival_site=? and a_depart_date=? and a_depart_time=?";
		ArrayList<SearchAir> list=new ArrayList<>();
		try {
			dbCon();
			pst=con.prepareStatement(sql);
			pst.setString(1, dpsite);
			pst.setString(2, arsite);
			pst.setString(3, dpdate);
			pst.setString(4, dptime);
			rs=pst.executeQuery();
			
			

			while(rs.next()) {
			SearchAir s=new SearchAir(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
			list.add(s);
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
	
	
	
	public void dbCon() {
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url,user,password);
			if(con!=null) {
				System.out.println("dbok");
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
