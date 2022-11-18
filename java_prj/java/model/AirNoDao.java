package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;

public class AirNoDao {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String password = "1234";

	Connection con = null;
	Statement st = null;
	PreparedStatement pst = null;
	ResultSet rs = null;

	
	
	public boolean ck(String id, String dpsite, String arsite, String dpdate, String dptime, String ardate,
			String artime, String[] seat) {
		boolean result=false;
		int cnt=0;
			try {

			
				dbCon();
				for (int i = 0; i < seat.length; i++) {
					String sql="select decode(count(*),1,'true', 'false') from RESERVATION_INFO where r_airno=?";
							
							String airNo = dpsite + dpdate + dptime + arsite + ardate + artime + seat[i];
					
				pst = con.prepareStatement(sql);
				pst.setString(1, airNo);
				rs=pst.executeQuery();
				if(rs.next()) {
					result=Boolean.parseBoolean(rs.getString(1));
					if(result==true) {
						cnt++;
					};
				};
				rs.close();
				pst.close();
				con.close();
				
			} 
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(cnt>=1) {
			result=true;
		};
		
		return result; 
	};
	public void insertAirNo(String id, String dpsite, String arsite, String dpdate, String dptime, String ardate,
			String artime, String[] seat) {
		try {
			
			dbCon();
			
			
			for (int i = 0; i < seat.length; i++) {
				
				String sql = "insert into RESERVATION_INFO values(?,?,?,to_date(sysdate, 'YYYY-MM-DD'))";

				
			
				String airNo = dpsite + dpdate + dptime + arsite + ardate + artime + seat[i];
				
				String reserNo = id + airNo;

				pst = con.prepareStatement(sql);

				
				pst.setString(1, reserNo);
				pst.setString(2, id);
				pst.setString(3, airNo);

				pst.executeUpdate();
				pst.close();
			}

			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void dbCon() {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			if (con != null) {

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
