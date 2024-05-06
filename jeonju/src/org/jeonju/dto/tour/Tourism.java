package org.jeonju.dto.tour;

public class Tourism {
	private int no;
	private String name;
	private String start_locate;
	private String lang;
	private String course;
	private int max_headcount;
	private int need_time;
	public Tourism(int no, String name, String start_locate, String lang, String course, int max_headcount,
			int need_time) {
		super();
		this.no = no;
		this.name = name;
		this.start_locate = start_locate;
		this.lang = lang;
		this.course = course;
		this.max_headcount = max_headcount;
		this.need_time = need_time;
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
	public String getStart_locate() {
		return start_locate;
	}
	public void setStart_locate(String start_locate) {
		this.start_locate = start_locate;
	}
	public String getLang() {
		return lang;
	}
	public void setLang(String lang) {
		this.lang = lang;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public int getMax_headcount() {
		return max_headcount;
	}
	public void setMax_headcount(int max_headcount) {
		this.max_headcount = max_headcount;
	}
	public int getNeed_time() {
		return need_time;
	}
	public void setNeed_time(int need_time) {
		this.need_time = need_time;
	}
	@Override
	public String toString() {
		return "Tourism [no=" + no + ", name=" + name + ", start_locate=" + start_locate + ", lang=" + lang
				+ ", course=" + course + ", max_headcount=" + max_headcount + ", need_time=" + need_time + "]";
	}
	
	
}
