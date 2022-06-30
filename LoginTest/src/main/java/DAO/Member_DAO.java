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
import DTO.Member_DTO;

public class Member_DAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
	public Member_DAO() {
		
		// db연결
		try {
			String dbURL = "jdbc:mysql://localhost:3306/bbs";
			String dbID = "root";
			String dbPW = "1234";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPW);
			System.out.println("디비 연결 성공");
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 로그인
	public int login(String bbs_Id, String bbs_Pw) {
		
		String SQL = "SELECT bbs_Pw FROM user WHERE bbs_Id = ?";
		
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bbs_Id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(bbs_Pw)) {
					System.out.println("넘어감");	// 여기서 안넘어감
					return 1;	// 로그인 성공
				}else {
					return 0;	// 비밀번호 불일치
				}
			}
			return -1;	// 아이디 없음
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -2;	// 데이터 베이스 오류
	}
	
	// 회원가입
	public void join(Member_DTO mDto) {
		String SQL = "INSERT INTO user VALUES(?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, mDto.getBbs_Id());
			pstmt.setString(2, mDto.getBbs_Pw());
			pstmt.setString(3, mDto.getBbs_Name());
			pstmt.setString(4, mDto.getBbs_Tel());
			result = pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} 
	}
	
}
