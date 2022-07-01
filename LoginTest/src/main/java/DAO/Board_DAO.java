package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import DTO.Board_DTO;

public class Board_DAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;

	public Board_DAO() {

		// db연결
		try {
			String dbURL = "jdbc:mysql://localhost:3306/bbs";
			String dbID = "root";
			String dbPW = "1234";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			System.out.println("디비 연결 성공");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 게시판 리스트 보여주는 코드
	public List getlist() {
		List list = new ArrayList();

		String SQL = "SELECT * FROM board ORDER BY bbs_Num DESC";

		try {
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Map item = new HashMap();
				item.put("bbs_Num", rs.getString("bbs_Num"));
				item.put("bbs_Title", rs.getString("bbs_Title"));
				item.put("bbs_Content", rs.getString("bbs_Content"));
				item.put("bbs_Regdate", rs.getString("bbs_Regdate"));
				list.add(item);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// 글쓰기
	public void setlist(Board_DTO bDto) {

		String SQL = "INSERT INTO board VALUES(?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bDto.getBbs_Num());
			pstmt.setString(2, bDto.getBbs_Title());
			pstmt.setString(3, bDto.getBbs_Content());
			pstmt.setString(4, bDto.getBbs_Regdate());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// 게시판 상세 페이지
	public Board_DTO selectById(String bbs_Num) {
		Board_DTO bDto = new Board_DTO();
		String SQL = "SELECT * FROM board WHERE bbs_Num = ?";

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bbs_Num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bDto.setBbs_Num(rs.getInt("bbs_Num"));
				bDto.setBbs_Title(rs.getString("bbs_Title"));
				bDto.setBbs_Content(rs.getString("bbs_Content"));
				bDto.setBbs_Regdate(rs.getString("bbs_Regdate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bDto;
	}

	// 게시판 수정
	public int update(Board_DTO bDto) {
		String SQL = "UPDATE board SET bbs_Title =?, bbs_Content =?, bbs_Regdate =? WHERE bbs_Num =?";

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bDto.getBbs_Title());
			pstmt.setString(2, bDto.getBbs_Content());
			pstmt.setString(3, bDto.getBbs_Regdate());
			pstmt.setInt(4, bDto.getBbs_Num());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	// 게시판 삭제
	public int delete(int bbs_Num) {
		String SQL = "DELETE FROM board WHERE bbs_Num = ?";

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbs_Num);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
