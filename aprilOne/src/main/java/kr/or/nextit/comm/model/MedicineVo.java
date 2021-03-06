package kr.or.nextit.comm.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class MedicineVo implements Serializable {

	// !!! *테이블이름 : TB_MEDICINE

	
	// !!!필드
	private String medCode;				// 
	private String medStoredate; 		// 
	private String medDisusedate; 		// 
	private String medAmt; 				// 
	private String medMemo; 			//
	
	// 약품정보에 대한 추가 정보 필드 
	private String medUnit; 			//  
	private String medCodename; 		//
	
	// !!!부가적 필드
	private String message;
	private boolean result;
	
	
	public String getMedCode() {
		return medCode;
	}
	public void setMedCode(String medCode) {
		this.medCode = medCode;
	}
	public String getMedStoredate() {
		return medStoredate;
	}
	public void setMedStoredate(String medStoredate) {
		this.medStoredate = medStoredate;
	}
	public String getMedDisusedate() {
		return medDisusedate;
	}
	public void setMedDisusedate(String medDisusedate) {
		this.medDisusedate = medDisusedate;
	}
	public String getMedAmt() {
		return medAmt;
	}
	public void setMedAmt(String medAmt) {
		this.medAmt = medAmt;
	}
	public String getMedMemo() {
		return medMemo;
	}
	public void setMedMemo(String medMemo) {
		this.medMemo = medMemo;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public boolean isResult() {
		return result;
	}
	public void setResult(boolean result) {
		this.result = result;
	}
	public String getMedUnit() {
		return medUnit;
	}
	public void setMedUnit(String medUnit) {
		this.medUnit = medUnit;
	}
	public String getMedCodename() {
		return medCodename;
	}
	public void setMedCodename(String medCodename) {
		this.medCodename = medCodename;
	}
	
	// !!!게터 세터
	
	
	
	
}




















