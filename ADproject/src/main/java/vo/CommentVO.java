package vo;

public class CommentVO {
	private int comment_idx, board_idx, academy_idx, instructor_idx;
	private String comment_name, comment_content, comment_ip, comment_regdate;
	
	public int getComment_idx() {
		return comment_idx;
	}
	public void setComment_idx(int comment_idx) {
		this.comment_idx = comment_idx;
	}
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}
	public int getAcademy_idx() {
		return academy_idx;
	}
	public void setAcademy_idx(int academy_idx) {
		this.academy_idx = academy_idx;
	}
	public int getInstructor_idx() {
		return instructor_idx;
	}
	public void setInstructor_idx(int instructor_idx) {
		this.instructor_idx = instructor_idx;
	}
	public String getComment_name() {
		return comment_name;
	}
	public void setComment_name(String comment_name) {
		this.comment_name = comment_name;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getComment_ip() {
		return comment_ip;
	}
	public void setComment_ip(String comment_ip) {
		this.comment_ip = comment_ip;
	}
	public String getComment_regdate() {
		return comment_regdate;
	}
	public void setComment_regdate(String comment_regdate) {
		this.comment_regdate = comment_regdate;
	}
	
}