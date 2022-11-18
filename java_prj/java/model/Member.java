package model;

public class Member {

	String m_id;
	String m_pw;
	String m_name;
	String m_socialcode;
	String m_email;
	String m_tel;
	String m_answer;
	
	public Member(String m_id, String m_pw, String m_name, String m_socialcode, String m_email, String m_tel,
			String m_answer) {
		super();
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_socialcode = m_socialcode;
		this.m_email = m_email;
		this.m_tel = m_tel;
		this.m_answer = m_answer;
	}

	public String getM_id() {
		return m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public String getM_socialcode() {
		return m_socialcode;
	}

	public String getM_email() {
		return m_email;
	}

	public String getM_tel() {
		return m_tel;
	}

	public String getM_answer() {
		return m_answer;
	}

	@Override
	public String toString() {
		return "member [m_id=" + m_id + ", m_pw=" + m_pw + ", m_name=" + m_name + ", m_socialcode=" + m_socialcode
				+ ", m_email=" + m_email + ", m_tel=" + m_tel + ", m_answer=" + m_answer + "]";
	}
	
	
	
	
}
