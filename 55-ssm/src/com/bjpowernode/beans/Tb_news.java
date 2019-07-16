package com.bjpowernode.beans;

public class Tb_news {
	private Integer id;
	private String title;
	private String neirong;
	private String kind;
	private String acthor;
	private String admin;
	private String pinglun;
	
	public String getAdmin() {
		return admin;
	}
	public String getPinglun() {
		return pinglun;
	}
	public void setPinglun(String pinglun) {
		this.pinglun = pinglun;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNeirong() {
		return neirong;
	}
	public void setNeirong(String neirong) {
		this.neirong = neirong;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getActhor() {
		return acthor;
	}
	public void setActhor(String acthor) {
		this.acthor = acthor;
	}
	
}
