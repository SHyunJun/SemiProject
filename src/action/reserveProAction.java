package action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import booking.BookingDBBean;
import booking.BookingDataBean;

public class reserveProAction implements CommandAction {

    public String requestPro( HttpServletRequest request,
        HttpServletResponse response) throws Throwable {

        request.setCharacterEncoding("UTF-8");

        String pageNum = request.getParameter("pageNum");

	BookingDataBean article = new BookingDataBean();
        article.setBkNo(Integer.parseInt(request.getParameter("bkNo")));
        article.setWtNo(Integer.parseInt(request.getParameter("wtNo")));
        article.setEmpNo(Integer.parseInt(request.getParameter("empNo")));
        article.setMemNo(Integer.parseInt(request.getParameter("momNo")));
        article.setMemNm(request.getParameter("memNm"));
        article.setMemTel(request.getParameter("memTel"));
        article.setStoreNm(request.getParameter("storeNm"));
		article.setBkDate(new Timestamp(System.currentTimeMillis()));
        article.setBkCnt(request.getParameter("bkCnt"));
        article.setBkMenu(request.getParameter("bkMenu"));
        article.setCofirmYn(request.getParameter("cofirmYn"));
        article.setBkStatus(request.getParameter("bkStatus"));
        article.setBkTblCnt(Integer.parseInt(request.getParameter("bkTblCnt")));



        
        
   
	BookingDBBean dbPro = BookingDBBean.getInstance();
        int check = dbPro.updateArticle(article);

        request.setAttribute("pageNum", new Integer(pageNum));
        request.setAttribute("check", new Integer(check));

        return "updatePro.jsp";
    }
}