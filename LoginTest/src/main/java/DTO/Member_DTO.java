package DTO;

public class Member_DTO {
	
	private String bbs_Id;
	private String bbs_Pw;
	private String bbs_Name;
	private String bbs_Tel;
	
	public Member_DTO(){
		
	}
	
	public Member_DTO(String bbs_Id, String bbs_Pw, String bbs_Name, String bbs_Tel) {
		super();
		this.bbs_Id = bbs_Id;
		this.bbs_Pw = bbs_Pw;
		this.bbs_Name = bbs_Name;
		this.bbs_Tel = bbs_Tel;
	}

	public String getBbs_Id() {
		return bbs_Id;
	}

	public void setBbs_Id(String bbs_Id) {
		this.bbs_Id = bbs_Id;
	}

	public String getBbs_Pw() {
		return bbs_Pw;
	}

	public void setBbs_Pw(String bbs_Pw) {
		this.bbs_Pw = bbs_Pw;
	}

	public String getBbs_Name() {
		return bbs_Name;
	}

	public void setBbs_Name(String bbs_Name) {
		this.bbs_Name = bbs_Name;
	}

	public String getBbs_Tel() {
		return bbs_Tel;
	}

	public void setBbs_Tel(String bbs_Tel) {
		this.bbs_Tel = bbs_Tel;
	}
	
	

}
