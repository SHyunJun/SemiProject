package store.list;

import java.sql.*;
import java.text.*;
import java.util.*;
import java.util.Date;


public class StoreListDBBean { //DAO

	private static StoreListDBBean instance = new StoreListDBBean();
	public static StoreListDBBean getInstance() {
		return instance;
	}
	
	// 빈 메소드 생성
	public StoreListDBBean() {}
	
	//DB연결
	private Connection getConnection() throws Exception{
		String jdbcDriver = "jdbc:apache:commons:dbcp:pool";
		return DriverManager.getConnection(jdbcDriver);
	} //getConnection ends.

	
   public ArrayList<StoreListDataBean> getUpdateCurCnt() {
      ArrayList<StoreListDataBean> list = null;
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;

      try {
         Date date = new Date(System.currentTimeMillis());
         SimpleDateFormat simple = new SimpleDateFormat("m");
         String sysdate = simple.format(date).toString();
         String x = sysdate.substring(1); // 분은 2자리니까 인덱스는 0부터지만 1을뽑았다. 1의 자리 비교할라구..
         if (x.equals("5")) {
            System.out.println("5분마다 업데이트됩니다.");
            String sql = "update booking set confirm_yn = 'y'";
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            conn.setAutoCommit(false);
            int check = pstmt.executeUpdate();
            if (check == 1) {
               sql = "select store_nm, cur_tbl_cnt, avl_tbl_cnt from store_list";
               pstmt = conn.prepareStatement(sql);
               rs = pstmt.executeQuery();
               list = new ArrayList<StoreListDataBean>();
               while (rs.next()) {
                  StoreListDataBean dto = new StoreListDataBean();
                  // 생성한 dto 객체의 화면의 보여줄 값을 담아주는 코드 set을
                  list.add(dto);
               }
            }
         } else {
            System.out.println("냥냥");
         }
         conn.commit();
         conn.setAutoCommit(true);
      } catch (
      Exception e) {
         e.printStackTrace();
         try {   conn.rollback();} catch (SQLException e1) {e1.printStackTrace();}
      } finally {
        try {
       	JdbcUtil.close(rs);
       	JdbcUtil.close(pstmt);
		JdbcUtil.close(conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
      }
      return list; 
   }

public StoreListDataBean get(int i) {
	// TODO Auto-generated method stub
	return null;
}


}