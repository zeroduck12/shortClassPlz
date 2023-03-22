package com.codingbox.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.codingbox.vo.MemberBean;

public class MemberDao {

	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	public boolean join(MemberBean member) {
		String sql = "INSERT INTO TBL_MEMBER VALUES (?, ?, ?, ?)";
		int result = 0;
		
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, member.getUserid());
			pstm.setString(2, member.getUserpw());
			pstm.setString(3, member.getUsername());
			pstm.setString(4, member.getUserphone());
			
			result = pstm.executeUpdate();
			
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		if( result !=0) {
			return true;
		} else {
			return false;
		}
	}
	
	public MemberBean login(String userid, String userpw) {
		System.out.println(userid);
		System.out.println(userpw);
		String sql = "SELECT * FROM TBL_MEMBER tm "
				+ "WHERE USERID = ? "
				+ "AND USERPW = ? ";
				
		MemberBean member = null;
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, userid);
			pstm.setString(2, userpw);
			
			rs = pstm.executeQuery();
			
			// db에 값이 있으면 rs.next()가 실행이 된다.
			
			if( rs.next() ) {
				member = new MemberBean();
				member.setUserid(rs.getString(1));
				member.setUserpw(rs.getString(2));
				member.setUsername(rs.getString(3));
				member.setUserphone(rs.getString(4));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return member;
	}
	
//	public boolean login(String userid, String userpw) {
//		System.out.println(userid);
//		System.out.println(userpw);
//		String sql = "SELECT * FROM TB1_MEMBER tm "
//				+ "WHERE USERID = ? "
//				+ "AND USERPW = ? ";
//		
//		boolean result = false;
//		
//		
//		try {
//			conn = DBConnection.getConnection();
//			pstm = conn.prepareStatement(sql);
//			
//			pstm.setString(1, userid);
//			pstm.setString(2, userpw);
//			
//			rs = pstm.executeQuery();
//			
//			// db에 값이 있으면 rs.next()가 실행이 된다.
//			
//			if( rs.next() ) {
//				result = true;
//			}
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		
//		return result;
//	}
//	
	
	
	
}
