package net.adminschedule.db;
import java.sql.*;

public class ListBean {
	private int LIST_ID;				// 입력 리스트 순번
	private String MEMBER_ID;		//고객 아이디
	private String SCHEDULE_ID;	//스케쥴 아이디	
	private String LIST_RESULT;		//처리 결과 표시
	public int getLIST_ID() {
		return LIST_ID;
	}
	public void setLIST_ID(int lIST_ID) {
		LIST_ID = lIST_ID;
	}
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	public String getSCHEDULE_ID() {
		return SCHEDULE_ID;
	}
	public void setSCHEDULE_ID(String sCHEDULE_ID) {
		SCHEDULE_ID = sCHEDULE_ID;
	}
	public String getLIST_RESULT() {
		return LIST_RESULT;
	}
	public void setLIST_RESULT(String lIST_RESULT) {
		LIST_RESULT = lIST_RESULT;
	}
	
	
}
