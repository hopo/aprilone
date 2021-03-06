package kr.or.nextit.session.service.impl;

import java.util.HashMap;
import java.util.List;

import kr.or.nextit.comm.model.EmployeeVo;
import kr.or.nextit.comm.model.LoginInfoVo;

public interface SessionMapper {
	
	/**
	 * @param param
	 * @return
	 * @throws Exception
	 */
	public EmployeeVo loginCheck(HashMap<String, Object> param) throws Exception;

	/**
	 * @param loginEmpId
	 * @throws Exception
	 */
	public void insertLoginDate(EmployeeVo employeeVo) throws Exception;
	

	/**
	 * @param employeeVo
	 * @throws Exception
	 */
	public void updateLogoutDate(EmployeeVo employeeVo) throws Exception;
	
	/**
	 * @param employeeVo
	 * @return
	 * @throws Exception
	 */
	public List<LoginInfoVo> selectLoginInfoList(EmployeeVo employeeVo) throws Exception;
}
