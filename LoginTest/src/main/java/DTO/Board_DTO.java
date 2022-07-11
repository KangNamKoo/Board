package DTO;

public class Board_DTO {

	private int bbs_Num;
	private String bbs_Title;
	private String bbs_Content;
	private String bbs_Regdate;
	private String bbs_UserId;

	public Board_DTO() {

	}

	public Board_DTO(int bbs_Num, String bbs_Title, String bbs_Content, String bbs_Regdate, String bbs_UserId) {
		super();
		this.bbs_Num = bbs_Num;
		this.bbs_Title = bbs_Title;
		this.bbs_Content = bbs_Content;
		this.bbs_Regdate = bbs_Regdate;
		this.bbs_UserId = bbs_UserId;
	}
	
	public int getBbs_Num() {
		return bbs_Num;
	}

	public void setBbs_Num(int bbs_Num) {
		this.bbs_Num = bbs_Num;
	}

	public String getBbs_Title() {
		return bbs_Title;
	}

	public void setBbs_Title(String bbs_Title) {
		this.bbs_Title = bbs_Title;
	}

	public String getBbs_Content() {
		return bbs_Content;
	}

	public void setBbs_Content(String bbs_Content) {
		this.bbs_Content = bbs_Content;
	}

	public String getBbs_Regdate() {
		return bbs_Regdate;
	}

	public void setBbs_Regdate(String bbs_Regdate) {
		this.bbs_Regdate = bbs_Regdate;
	}

	public String getBbs_UserId() {
		return bbs_UserId;
	}

	public void setBbs_UserId(String bbs_UserId) {
		this.bbs_UserId = bbs_UserId;
	}
	
	

}
