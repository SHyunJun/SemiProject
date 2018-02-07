package store.menu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import store.menu.PreorderDataBean;

public class PreorderDBBean{
	private static PreorderDBBean instance = new PreorderDBBean();

	public static PreorderDBBean getInstance() { //싱글턴패턴으로 객체 생성해둠
		return instance;	
	}
	
	public PreorderDBBean() {}
	
	private Connection getConnection() throws Exception{
		String jdbcDriver = "jdbc:apache:commons:dbcp:pool";
		return DriverManager.getConnection(jdbcDriver);
	}
	
	// 예약하기
	public void insertPreorder(PreorderDataBean booking) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into Preorder values(?,?,?,?)");
			pstmt.setInt(1, booking.getMenuNo());
			pstmt.setInt(2, booking.getStoreNo());
			pstmt.setString(3, booking.getCateNm());
			pstmt.setString(4, booking.getMenuNm());
			pstmt.setInt(5, booking.getPrice());

		
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if(conn != null) try {conn.close();} catch(SQLException ex) {}
			if(pstmt != null) try {pstmt.close();} catch(SQLException ex) {}
		}// 매장관리자 예약 확인 
		
	}//예약했을때 넘겨가지는 값
	
}//class ends.