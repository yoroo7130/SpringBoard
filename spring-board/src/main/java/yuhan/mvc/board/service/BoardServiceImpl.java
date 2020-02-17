package yuhan.mvc.board.service;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import yuhan.mvc.board.dao.BoardDAO;
import yuhan.mvc.board.dto.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	BoardDAO boardDao;

	// 01. 게시글 작성
	@Transactional // 트랜잭션 처리 메서드로 설정
	@Override
	public void create(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		String name = vo.getB_name();
		String subject = vo.getB_subject();
		String content = vo.getB_content();
		
		// *태그문자 처리 (< ==> &lt; > ==> &gt;)
		// replace(A, B) A를 B로 변경
		subject = subject.replace("<", "&lt;");
		subject = subject.replace("<", "&gt;");
		name = name.replace("<", "&lt;");
		name = name.replace("<", "&gt;");
		// *공백문자 처리
		subject = subject.replace("  ", "&nbsp;&nbsp;");
		name = name.replace("  ",	"&nbsp;&nbsp;");
		// *줄바꿈 문자처리
		content = content.replace("\n", "<br>");
		
		vo.setB_name(name);
		vo.setB_subject(subject);
		vo.setB_content(content);
		
		// 게시물 등록
		boardDao.create(vo);
	}

	// 02. 게시글 상세보기
	@Override
	public BoardVO read(int b_no) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.read(b_no);
	}

	// 03. 게시글 수정
	@Override
	public void update(BoardVO vo) throws Exception {
		boardDao.update(vo);
	}

	// 04. 게시글 삭제
	@Override
	public void delete(int b_no) throws Exception {
		// TODO Auto-generated method stub
		boardDao.delete(b_no);
	}

	// 05. 게시글 전체 목록
	@Override
	public List<BoardVO> listAll(int start, int end) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.listAll(start, end);
	}

	// 06. 게시글 레코드 갯수
	@Override
	public int countArticle() throws Exception {
		// TODO Auto-generated method stub
		return boardDao.countArticle();
	}

}
