package review;

public class ReviewDataBean {
	// 매장 별 평가 및 이용후기관리 이용고객의 매장 평가 및 이용후기

	    // 글번호 리뷰글번호
	    private Integer rvNo;

	    //  매장번호
	    private Integer storeNo;

	    // 회원명 회원명
	    private String memNm;

	    // 매장명 매장명
	    private String storeNm;

	    // 이용일자 방문일자
	    private String visitDate;

	    // 글제목 리뷰글제목
	    private String rvTitle;

	    // 좋아요 좋아요
	    private Integer likeCnt;

	    // 조회수 조회수
	    private Integer rViewCnt;

	    public Integer getRvNo() {
	        return rvNo;
	    }

	    public void setRvNo(Integer rvNo) {
	        this.rvNo = rvNo;
	    }

	    public Integer getStoreNo() {
	        return storeNo;
	    }

	    public void setStoreNo(Integer storeNo) {
	        this.storeNo = storeNo;
	    }

	    public String getMemNm() {
	        return memNm;
	    }

	    public void setMemNm(String memNm) {
	        this.memNm = memNm;
	    }

	    public String getStoreNm() {
	        return storeNm;
	    }

	    public void setStoreNm(String storeNm) {
	        this.storeNm = storeNm;
	    }

	    public String getVisitDate() {
	        return visitDate;
	    }

	    public void setVisitDate(String visitDate) {
	        this.visitDate = visitDate;
	    }

	    public String getRvTitle() {
	        return rvTitle;
	    }

	    public void setRvTitle(String rvTitle) {
	        this.rvTitle = rvTitle;
	    }

	    public Integer getLikeCnt() {
	        return likeCnt;
	    }

	    public void setLikeCnt(Integer likeCnt) {
	        this.likeCnt = likeCnt;
	    }

	    public Integer getRViewCnt() {
	        return rViewCnt;
	    }

	    public void setRViewCnt(Integer rViewCnt) {
	        this.rViewCnt = rViewCnt;
	    }


}
