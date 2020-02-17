package yuhan.mvc.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yuhan.mvc.board.dto.BoardVO;

@Repository // 현재 클래스를 dao bean으로 등록	
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	SqlSession sqlSession;
	
	// 01. 게시글 작성
	@Override
	public void create(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert("board.insert", vo);
	}

	// 02. 게시글 상세보기
	@Override
	public BoardVO read(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("board.view", bno);
	}

	// 03. 게시글 수정
	@Override
	public void update(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update("board.updateArticle", vo);
	}

	// 04. 게시글 삭제
	@Override
	public void delete(int bno) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete("board.deleteArticle",bno);
	}

	// 05. 게시글 전체 목록
	@Override
	public List<BoardVO> listAll(int start, int end) throws Exception {
		// TODO Auto-generated method stub				
		// BETWEEN #{start}, #{end}에 입력될 값
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);				
		map.put("end", end);				
		return sqlSession.selectList("board.listAll", map);
	}

	@Override
	public int countArticle() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("board.countArticle");
	}
}
