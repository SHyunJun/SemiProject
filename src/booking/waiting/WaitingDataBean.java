package booking.waiting;

public class WaitingDataBean {

    //  대기번호
    private Integer wtNo;

    //  예약회원번호
    private String memNo;

    //  예악일시
    private String bkDate;

    //  예약인원
    private String bkCnt;

    //  예약메뉴
    private String bkMenu;

    //  매장확인여부
    private String confirmYn;

    public Integer getWtNo() {
        return wtNo;
    }

    public void setWtNo(Integer wtNo) {
        this.wtNo = wtNo;
    }

    public String getMemNo() {
        return memNo;
    }

    public void setMemNo(String memNo) {
        this.memNo = memNo;
    }

    public String getBkDate() {
        return bkDate;
    }

    public void setBkDate(String bkDate) {
        this.bkDate = bkDate;
    }

    public String getBkCnt() {
        return bkCnt;
    }

    public void setBkCnt(String bkCnt) {
        this.bkCnt = bkCnt;
    }

    public String getBkMenu() {
        return bkMenu;
    }

    public void setBkMenu(String bkMenu) {
        this.bkMenu = bkMenu;
    }

    public String getConfirmYn() {
        return confirmYn;
    }

    public void setConfirmYn(String confirmYn) {
        this.confirmYn = confirmYn;
    }

  

}
