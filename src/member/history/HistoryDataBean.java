package member.history;

public class HistoryDataBean {

	// 회원별 과거 매장이용내역 고객의 과거 매장이용내역


	    //  이용내역번호
	    private Integer hisNo;

	    // 회원번호 회원번호
	    private Integer memNo;

	    // 회원명 회원명
	    private String memNm;

	    // 이용일자 방문일자
	    private String visitDate;

	    // 이용매장 방문매장
	    private String visitStore;

	    // 이용메뉴 이용메뉴내역
	    private String hisMenu;

	    public Integer getHisNo() {
	        return hisNo;
	    }

	    public void setHisNo(Integer hisNo) {
	        this.hisNo = hisNo;
	    }

	    public Integer getMemNo() {
	        return memNo;
	    }

	    public void setMemNo(Integer memNo) {
	        this.memNo = memNo;
	    }

	    public String getMemNm() {
	        return memNm;
	    }

	    public void setMemNm(String memNm) {
	        this.memNm = memNm;
	    }

	    public String getVisitDate() {
	        return visitDate;
	    }

	    public void setVisitDate(String visitDate) {
	        this.visitDate = visitDate;
	    }

	    public String getVisitStore() {
	        return visitStore;
	    }

	    public void setVisitStore(String visitStore) {
	        this.visitStore = visitStore;
	    }

	    public String getHisMenu() {
	        return hisMenu;
	    }

	    public void setHisMenu(String hisMenu) {
	        this.hisMenu = hisMenu;
	    }

	
	}

