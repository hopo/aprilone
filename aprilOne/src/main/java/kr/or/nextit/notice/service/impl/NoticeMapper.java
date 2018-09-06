package kr.or.nextit.notice.service.impl;

import java.util.List;
import java.util.Map;

import kr.or.nextit.comm.model.NoticeVo;

public interface NoticeMapper {

	// 매퍼- 게시판 목록을 불러온다
	public List<NoticeVo> selectNoticeList() throws Exception;
	
	// 글작성
	public void insertNotice(Map<String, Object> hmap) throws Exception;

}