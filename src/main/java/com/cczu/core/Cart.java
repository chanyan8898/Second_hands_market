package com.cczu.core;

public class Cart {

	private Integer gid;
	private String gname;
	private Double newprice;
	private String path;
	private Integer id;
	private String issale;
	
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getIssale() {
		return issale;
	}
	public void setIssale(String issale) {
		this.issale = issale;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public Double getNewprice() {
		return newprice;
	}
	public void setNewprice(Double newprice) {
		this.newprice = newprice;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}

	
}
