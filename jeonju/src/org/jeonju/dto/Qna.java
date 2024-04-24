package org.jeonju.dto;

public class Qna {
	private int no;
	private String title;
	private String comment;
	private int q_level;
	private int userno;
	private String paremail;
	private String resdate;
	private int visited;
	public Qna(int no, String title, String comment, int q_level, int userno, String paremail, String resdate,
			int visited) {
		super();
		this.no = no;
		this.title = title;
		this.comment = comment;
		this.q_level = q_level;
		this.userno = userno;
		this.paremail = paremail;
		this.resdate = resdate;
		this.visited = visited;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getQ_level() {
		return q_level;
	}
	public void setQ_level(int q_level) {
		this.q_level = q_level;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getParemail() {
		return paremail;
	}
	public void setParemail(String paremail) {
		this.paremail = paremail;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	@Override
	public String toString() {
		return "Qna [no=" + no + ", title=" + title + ", comment=" + comment + ", q_level=" + q_level + ", userno="
				+ userno + ", paremail=" + paremail + ", resdate=" + resdate + ", visited=" + visited + "]";
	}
	
	
	
	
}
