package store.list;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StoreListServlet
 */
@WebServlet("/StoreListServlet")
public class StoreListServlet extends HttpServlet {
	   private static final long serialVersionUID = 1L;
	   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      
	      System.out.println("doPost 가 실행되었습니다.");
	      StoreListDBBean dao = new StoreListDBBean();
	      List<StoreListDataBean> list = new ArrayList<StoreListDataBean>();
	      
	      list = dao.getUpdateCurCnt();
	      StringBuffer sb = new StringBuffer();
	      sb.append("{\"result\":[");//jsp 에서 가져오는 result // json형태로 만들어요(27-34)
	      
	      for(int i =0; i<list.size(); i++) {
	    	  sb.append("[{\"value\": \""+ list.get(i).getStoreNm()+"\"},");    // 매장명 , 현재 ,이용가능
	    	  sb.append("{\"value\": \""+ list.get(i).getCurTblCnt()+"\"},");
	    	  sb.append("{\"value\": \""+ list.get(i).getAvlTblCnt()+"\"}]");
	      }   
	      sb.append("]\"}");
	      response.getWriter().write(sb.toString()); 
		
		
		
	}

}
