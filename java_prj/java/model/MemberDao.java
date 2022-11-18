package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MemberDao {

	String driver = "oracle.jdbc.driver.OracleDriver" ;//정해진 경로
	String url="jdbc:oracle:thin:@localhost:1521:xe";//오라클 url
	String user="system";
	String password="1234";
	
	Connection con = null;
	Statement st = null;
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
	
	public void updateInfo(String id, String pw, String name, String tel, String email) {
		
		
		try {
			dbCon();
			String sql = "update member_info set m_pw = ?, m_name = ?, m_tel = ?, m_email = ? where m_id = ?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, pw);
			pst.setString(2, name);
			pst.setString(3, tel);
			pst.setString(4, email);
			pst.setString(5, id);
			pst.executeUpdate();
			
			pst.close();
			con.close();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public boolean duplicatedID(String id) {
		boolean result=false;
		
		try {
			dbCon();
			String  sql ="select decode( count(*), 1 ,'true','false') ";
			        sql += " from member_info where m_id=?";
			
			PreparedStatement pst  = con.prepareStatement(sql);
			pst.setString(1, id);
			ResultSet rs  =pst.executeQuery();
			
			if( rs.next()) {
				result = Boolean.parseBoolean(rs.getString(1));
			}
			
			rs.close();
			pst.close();
			con.close();			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
	
	public boolean formatSC(String sc) {
		boolean result=false;
		
		
		
		
		return result;
	}
	
	public boolean duplicatedSC(String sc) {
		boolean result=false;
		
		try {
			dbCon();
			String  sql ="select decode( count(*), 1 ,'true','false') ";
			        sql += " from member_info where m_socialcode=?";
			
			PreparedStatement pst  = con.prepareStatement(sql);
			pst.setString(1, sc);
			ResultSet rs  =pst.executeQuery();
			
			if( rs.next()) {
				result = Boolean.parseBoolean(rs.getString(1));
			}
			
			rs.close();
			pst.close();
			con.close();			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
	
	public boolean duplicatedemail(String email) {
		boolean result=false;
		
		try {
			dbCon();
			String  sql ="select decode( count(*), 1 ,'true','false') ";
			        sql += " from member_info where m_email=?";
			
			PreparedStatement pst  = con.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs  =pst.executeQuery();
			
			if( rs.next()) {
				result = Boolean.parseBoolean(rs.getString(1));
			}
			
			rs.close();
			pst.close();
			con.close();			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
	
	
	public boolean duplicatedTel(String tel) {
		boolean result=false;
		
		try {
			dbCon();
			String  sql ="select decode( count(*), 1 ,'true','false') ";
			        sql += " from member_info where m_tel=?";
			
			PreparedStatement pst  = con.prepareStatement(sql);
			pst.setString(1, tel);
			ResultSet rs  =pst.executeQuery();
			
			if( rs.next()) {
				result = Boolean.parseBoolean(rs.getString(1));
			}
			
			rs.close();
			pst.close();
			con.close();			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
	
	
	
	
	public boolean confirmMember(String id, String pw) {
		boolean result=false;
		
		try {
			dbCon();
			String sql = "select decode( count(*), 1 ,'true','false') from member_info where m_id=? and m_pw=?";
			pst = con.prepareStatement(sql);
			
			pst.setString(1, id);
			pst.setString(2, pw);
			
			ResultSet rs  =pst.executeQuery();
			
			
			if( rs.next()) {
				result = Boolean.parseBoolean(rs.getString(1));
			}
			
			rs.close();
			pst.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	public void insertMember(Member m) {
		
		try {
			dbCon();
			String sql="insert into member_info values(?,?,?,?,?,?,?)";
			
			pst=con.prepareStatement(sql);
			
			pst.setString(1, m.getM_id());
			pst.setString(2, m.getM_pw());
			pst.setString(3, m.getM_name());
			pst.setString(4, m.getM_socialcode());
			pst.setString(5, m.getM_email());
			pst.setString(6, m.getM_tel());
			pst.setString(7, m.getM_answer());
			
			
			pst.executeUpdate();
			
			pst.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	
	public String findId(String name, String code, String email) {
		String id = "";
		try {
			dbCon();
			String sql = "select m_id from member_info where m_name=? and m_socialcode=? and m_email=?";
			pst=con.prepareStatement(sql);
			
			pst.setString(1, name);
			pst.setString(2, code);
			pst.setString(3, email);
			
			rs=pst.executeQuery();
			
			if(rs.next()) {
				id = rs.getString(1);
			}
			
			rs.close();
			pst.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return id;
	}
	

	public void alterPw(String id, String pw) {
		try {
			dbCon();
			String sql = "update member_info set m_pw=? where m_id=?";
			pst=con.prepareStatement(sql);
			
			pst.setString(1,pw);
			pst.setString(2,id);
			
			pst.executeUpdate();
			
			pst.close();
			con.close();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public String realId(String email, String answer) {
		String id="";
		
		try {
			dbCon();
			String sql="select m_id from member_info where m_email=? and m_answer=?";
			pst=con.prepareStatement(sql);
			
			pst.setString(1, email);
			pst.setString(2, answer);
			
			rs=pst.executeQuery();
			
			if(rs.next()) {
				id = rs.getString(1);
			}
			
			rs.close();
			pst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return id;
	}
	
	
	public Member getMember(String id) {
		
		Member m = null;
		
		try {
			dbCon();
			String sql = "select * from member_info where m_id = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, id);
			rs = pst.executeQuery();
			
			if( rs.next() ) {
				m = new Member (rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
			}
			
			rs.close();
			pst.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return m;
		
	}
	
	
	public void alterMember(String id, String pw, String name, String tel, String email) {
		
	}
	
	
	

}
