package org.jeonju.dto;

public class CulturalFacilities {
	private int no;
	private String name;
	private String locate;
	private String tel;
	private String img;
	private String comment;
	private int visited;
	public CulturalFacilities(int no, String name, String locate, String tel, String img, String comment, int visited) {
		super();
		this.no = no;
		this.name = name;
		this.locate = locate;
		this.tel = tel;
		this.img = img;
		this.comment = comment;
		this.visited = visited;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocate() {
		return locate;
	}
	public void setLocate(String locate) {
		this.locate = locate;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	@Override
	public String toString() {
		return "CulturalFacilities [no=" + no + ", name=" + name + ", locate=" + locate + ", tel=" + tel + ", img="
				+ img + ", comment=" + comment + ", visited=" + visited + "]";
	}
	
	
}
