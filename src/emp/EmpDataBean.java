package emp;

public class EmpDataBean {

	// 직원관리 직원현황


	    // 사원번호 직원번호
	    private Integer empNo;

	    // 사원명 직원명
	    private String empNm;

	    // 소속 소속매장번호
	    private Integer storeNo;

	    // 직위 직위
	    private String position;

	    // 관리자권한 관리자권한유무
	    private String admYn;

	    //  재직상태
	    private String empStatus;

	    public Integer getEmpNo() {
	        return empNo;
	    }

	    public void setEmpNo(Integer empNo) {
	        this.empNo = empNo;
	    }

	    public String getEmpNm() {
	        return empNm;
	    }

	    public void setEmpNm(String empNm) {
	        this.empNm = empNm;
	    }

	    public Integer getStoreNo() {
	        return storeNo;
	    }

	    public void setStoreNo(Integer storeNo) {
	        this.storeNo = storeNo;
	    }

	    public String getPosition() {
	        return position;
	    }

	    public void setPosition(String position) {
	        this.position = position;
	    }

	    public String getAdmYn() {
	        return admYn;
	    }

	    public void setAdmYn(String admYn) {
	        this.admYn = admYn;
	    }

	    public String getEmpStatus() {
	        return empStatus;
	    }

	    public void setEmpStatus(String empStatus) {
	        this.empStatus = empStatus;
	    }

	
}
