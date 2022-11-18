package model;

public class SearchAir {
	
	String airno;
	String dpsite;
	String dpdate;
	String dptime;
	String arsite;
	String ardate;
	String artime;
	String seat;
	
	public SearchAir() {}

	@Override
	public String toString() {
		return "SearchAir [airno=" + airno + ", dpsite=" + dpsite + ", dpdate=" + dpdate + ", dptime=" + dptime
				+ ", arsite=" + arsite + ", ardate=" + ardate + ", artime=" + artime + ", seat=" + seat + "]";
	}

	public String getAirno() {
		return airno;
	}

	public String getDpsite() {
		return dpsite;
	}

	public String getDpdate() {
		return dpdate;
	}

	public String getDptime() {
		return dptime;
	}

	public String getArsite() {
		return arsite;
	}

	public String getArdate() {
		return ardate;
	}

	public String getArtime() {
		return artime;
	}

	public String getSeat() {
		return seat;
	}

	public SearchAir(String airno, String dpsite, String dpdate, String dptime, String arsite, String ardate,
			String artime, String seat) {
		super();
		this.airno = airno;
		this.dpsite = dpsite;
		this.dpdate = dpdate;
		this.dptime = dptime;
		this.arsite = arsite;
		this.ardate = ardate;
		this.artime = artime;
		this.seat = seat;
	}
	

	
}
