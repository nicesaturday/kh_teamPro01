package org.jeonju.dto;

public class Notice {
	private int id;
	private String title;
	private String comment;
	private String resdate;
	private int visited;
	public Notice(int id, String title, String comment, String resdate, int visited) {
		super();
		this.id = id;
		this.title = title;
		this.comment = comment;
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
		return "Notice [id=" + id + ", title=" + title + ", comment=" + comment + ", resdate=" + resdate + ", visited="
				+ visited + "]";
	}
	
	
}
