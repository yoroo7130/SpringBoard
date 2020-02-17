package yuhan.mvc.board.dao;

import java.util.List;

import yuhan.mvc.board.dto.BoardVO;

public interface BoardDAO {
	// 01. 게시글 작성
	public void create(BoardVO vo) throws Exception;
	// 02. 게시글 상세보기
	public BoardVO read(int bno) throws Exception;
	// 03. 게시글 수정
	public void update(BoardVO vo) throws Exception;
	// 04. 게시글 삭제
	public void delete(int bno) throws Exception;
	// 05. 게시글 전체 목록
	public List<BoardVO> listAll(int start, int end) throws Exception;
	// 06. 게시글 레코드 갯수
	public int countArticle() throws Exception;
}
