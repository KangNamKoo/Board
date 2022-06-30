package DTO;

public class Board_DTO {
	
	private String bbs_Num;
	private String bbs_Title;
	private String bbs_Content;
	private String bbs_Regdate;
	
	public Board_DTO() {
		
	}
	
	public Board_DTO(String bbs_Num, String bbs_Title, String bbs_Content, String bbs_Regdate) {
		super();
		this.bbs_Num = bbs_Num;
		this.bbs_Title = bbs_Title;
		this.bbs_Content = bbs_Content;
		this.bbs_Regdate = bbs_Regdate;
	}

	public String getBbs_Num() {
		return bbs_Num;
	}

	public void setBbs_Num(String bbs_Num) {
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
	
	

}
