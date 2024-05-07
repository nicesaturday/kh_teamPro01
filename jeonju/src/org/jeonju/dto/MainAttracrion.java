package org.jeonju.dto;

public class MainAttracrion {
	private int no;
	private String name;
	private String tel;
	private String locate;
	private String img;
	private String comment;
	private int visited;
	public MainAttracrion(int no, String name, String tel, String locate, String img, int visited) {
		super();
		this.no = no;
		this.name = name;
		this.tel = tel;
		this.locate = locate;
		this.img = img;
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getLocate() {
		return locate;
	}
	public void setLocate(String locate) {
		this.locate = locate;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	@Override
	public String toString() {
		return "MainAttracrion [no=" + no + ", name=" + name + ", tel=" + tel + ", locate=" + locate + ", img=" + img
				+ ", visited=" + visited + "]";
	}
	
	
}
