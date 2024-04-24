package org.jeonju.dto;

public class Qna {
	private int id;
	private String title;
	private String comment;
	private int q_level;
	private int userid;
	private String paremail;
	private String resdate;
	private int visited;
	public Qna(int id, String title, String comment, int q_level, int userid, String paremail, String resdate,
			int visited) {
		super();
		this.id = id;
		this.title = title;
		this.comment = comment;
		this.q_level = q_level;
		this.userid = userid;
		this.paremail = paremail;
		this.resdate = resdate;
		this.visited = visited;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
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
		return "Qna [id=" + id + ", title=" + title + ", comment=" + comment + ", q_level=" + q_level + ", userid="
				+ userid + ", paremail=" + paremail + ", resdate=" + resdate + ", visited=" + visited + "]";
	}
	
	
	
}
