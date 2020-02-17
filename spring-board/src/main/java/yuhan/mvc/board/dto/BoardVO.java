package yuhan.mvc.board.dto;

import java.util.Date;

public class BoardVO {
	private int b_no;			// 게시글 번호
	private String b_name;		// 게시글 작성자
	private String b_subject;		// 게시글 제목
	private String b_content;		// 게시글 내용
	private Date b_date;		// 게시글 작성일자
	
	// Getter/Setter
	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_subject() {
		return b_subject;
	}

	public void setB_subject(String b_subject) {
		this.b_subject = b_subject;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public Date getB_date() {
		return b_date;
	}

	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	
	// toString()
	@Override
	public String toString() {
		return "BoardVO [bno=" + b_no + ", title=" + b_subject + ", content=" + b_content + "]";
	}

}