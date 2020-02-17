package yuhan.mvc.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import yuhan.mvc.board.dto.BoardVO;
import yuhan.mvc.board.service.BoardPager;
import yuhan.mvc.board.service.BoardService;

@Controller	// 현재 클래스를 컨트롤러 빈(bean)으로 등록
@RequestMapping("/*")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	// 의존관계 주입 => BoardServiceImpl 생성
	// IoC 의존관계 역전
	@Inject
	BoardService boardService;
	
	// 01. 게시글 목록
	@RequestMapping("list.do")
	// @RequestParam(defaultValue="") ==> 기본값 할당
	public ModelAndView list(@RequestParam(defaultValue="1") int curPage) throws Exception{
		// 레코드의 갯수 계산
		int count = boardService.countArticle();
		// 페이지 나누기 관련 처리
		BoardPager boardPager = new BoardPager(count, curPage);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();
		
		List<BoardVO> list = boardService.listAll(start, end);
		
		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		map.put("count", count); // 레코드의 갯수
		map.put("boardPager", boardPager);
		
		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		/*
		mav.addObject("list", list); // 데이터를 저장
		mav.addObject("count", count);
		*/
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("board/list"); // 뷰를 list.jsp로 설정
		return mav; // list.jsp로 List가 전달된다.
	}
	
	// 02_01. 게시글 작성화면
	// @RequestMapping("board/write.do")
	// value="", method="전송방식"
	@RequestMapping(value="write.do", method=RequestMethod.GET)
	public String write(){
		
		return "board/write"; // write.jsp로 이동
	}
	
	// 02_02. 게시글 작성처리
	@RequestMapping(value="insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute BoardVO vo) throws Exception{
		boardService.create(vo);
		return "redirect:list.do";
	}
	
	// 03. 게시글 상세내용 조회
	// @RequestParam : get/post방식으로 전달된 변수 1개
	// HttpSession 세션객체
	@RequestMapping(value="view.do", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam int b_no, @RequestParam int curPage) throws Exception{
		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("board/view");
		// 뷰에 전달할 데이터
		mav.addObject("dto", boardService.read(b_no));
		mav.addObject("curPage", curPage);
		logger.info("mav:", mav);
		return mav;
	}
	
	// 04. 게시글 수정
	// 폼에서 입력한 내용들은 @ModelAttribute BoardVO vo로 전달됨
	@RequestMapping(value="update.do", method=RequestMethod.POST)
	public String update(@ModelAttribute BoardVO vo) throws Exception{
		boardService.update(vo);
		return "redirect:list.do";
	}
	
	// 05. 게시글 삭제
	@RequestMapping("delete.do")
	public String delete(@RequestParam int b_no) throws Exception{
		boardService.delete(b_no);
		return "redirect:list.do";
	}
}