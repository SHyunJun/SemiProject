package emp.adm;

public class EmpAdmDataBean {
//  매장별  대표관리자 현황


    //  관리자ID
    private String admId;

    //  직원번호
    private Integer empNo;

    //  직원명
    private String empNm;

    //  관리자계정PW
    private String admPw;

    //  관리자권한유무
    private String admYn;

    public String getAdmId() {
        return admId;
    }

    public void setAdmId(String admId) {
        this.admId = admId;
    }

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

    public String getAdmPw() {
        return admPw;
    }

    public void setAdmPw(String admPw) {
        this.admPw = admPw;
    }

    public String getAdmYn() {
        return admYn;
    }

    public void setAdmYn(String admYn) {
        this.admYn = admYn;
    }


}
