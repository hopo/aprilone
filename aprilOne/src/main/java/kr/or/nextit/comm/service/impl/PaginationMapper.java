package kr.or.nextit.comm.service.impl;

import kr.or.nextit.comm.util.SearchVo;

public interface PaginationMapper {
	
	/**
	 * @param searchVo
	 * @return
	 * @throws Exception
	 */
	public int selectTotalCount(SearchVo searchVo) throws Exception;

}
