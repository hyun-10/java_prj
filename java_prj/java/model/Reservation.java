package model;

import java.util.Date;

public class Reservation {

	int r_No;
	String r_airNo;
	Date r_reserDate;
	
	public Reservation(int r_No, String r_airNo, Date r_reserDate) {
		super();
		this.r_No=r_No;
		this.r_airNo = r_airNo;
		this.r_reserDate = r_reserDate;
		
	}

	
	
	public int getR_No() {
		return r_No;
	}

	public String getR_airNo() {
		return r_airNo;
	}

	public Date getR_reserDate() {
		return r_reserDate;
	}



	@Override
	public String toString() {
		return "Reservation [r_No=" + r_No + ", r_airNo=" + r_airNo + ", r_reserDate=" + r_reserDate + "]";
	}



	

	
	
	
}
