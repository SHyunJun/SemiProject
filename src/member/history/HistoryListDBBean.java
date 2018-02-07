package member.history;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class HistoryListDBBean {
	
	//DB Bean 인스턴스 생성
	private static HistoryListDBBean instance = new HistoryListDBBean();
	public static HistoryListDBBean getInstance() {
		return instance;
	}
	
	// 빈 메소드 생성
	public HistoryListDBBean() {}
	
	//DB연결
	private Connection getConnection() throws Exception{
		String jdbcDriver = "jdbc:apache:commons:dbcp:pool";
		return DriverManager.getConnection(jdbcDriver);
	} //getConnection ends.

	// 신규매장추가
	public void insertStore(HistoryDataBean store_list) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert INTO STORE_LIST VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, store_list.getStoreNo());
			pstmt.setInt(2, store_list.getRvNo());
			pstmt.setInt(3, store_list.getEmpNo());
			pstmt.setString(4, store_list.getCateNm());
			pstmt.setString(5, store_list.getStoreNm());
			pstmt.setString(6, store_list.getStoreExp());
			pstmt.setString(7, store_list.getStorePlc());
			pstmt.setString(8, store_list.getStoreTel());
			pstmt.setString(9, store_list.getStoreInfo());
			pstmt.setString(10, store_list.getStoreExpDt());
			pstmt.setInt(11, store_list.getTotTblCnt());
			pstmt.setInt(12, store_list.getAvlTblCnt());
			pstmt.setString(13, store_list.getStoreUrl());
			pstmt.setString(14, store_list.getImgRoot());
			pstmt.setInt(15, store_list.getAvgPrice());
			pstmt.setInt(16, store_list.getPreference());
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
			if(conn != null) try {conn.close();} catch(SQLException ex) {}
			if(pstmt != null) try {pstmt.close();} catch(SQLException ex) {}
		}
		
	}
	// 기존매장정보변경
	
	// 예약현황에 따른 테이블 수 변경(trigger)
	

}//class ends.
