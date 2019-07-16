package com.bjpowernode.beans;

import java.util.List;

import javax.persistence.Table;

@Table(name="zancun")
public class Zancun {
	private Integer id;
	private String title;
	private String neirong;
	private String kind;
	private String acthor;

	public Zancun(String title, String neirong, String kind,String acthor) {
		// TODO Auto-generated constructor stub
		super();
		this.title=title;
		this.neirong =neirong;
		this.kind=kind;
		this.acthor=acthor;
	}



public Zancun() {
        super();
        // TODO Auto-generated constructor stub
    }

	public Integer getId() {
		return id;
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
