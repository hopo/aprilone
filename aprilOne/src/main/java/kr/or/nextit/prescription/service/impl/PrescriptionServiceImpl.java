package kr.or.nextit.prescription.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.nextit.comm.model.PrescriptionVo;
import kr.or.nextit.prescription.service.PrescriptionService;

@Service("PrescriptionService")
public class PrescriptionServiceImpl implements PrescriptionService {

	private final Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private PrescriptionMapper prescriptionMapper;

	
	
	// 처방조회 화면
	@Override
	public PrescriptionVo prescriptionSelect(PrescriptionVo prescriptionVo) throws Exception {
		
		prescriptionMapper.prescriptionSelect(prescriptionVo);
		
		
		return prescriptionVo;
	}



	@Override
	public PrescriptionVo prescriptionViewSelect(PrescriptionVo prescriptionVo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	

	
	
	

	
	
	
}




















