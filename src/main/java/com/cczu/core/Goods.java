package com.cczu.core;

import java.util.Date;

public class Goods {

	private Integer gid;
	private Integer cid;
	private String gname;
	private Double price;
	private Double newprice;
	private String discribe;
	private String path;
	private Date date;
	private Integer ishot;
	private Integer iscompete;
	private Integer issale;
	
	
	public Integer getIssale() {
		return issale;
	}
	public void setIssale(Integer issale) {
		this.issale = issale;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public Integer getIshot() {
		return ishot;
	}
	public void setIshot(Integer ishot) {
		this.ishot = ishot;
	}
	public Integer getIscompete() {
		return iscompete;
	}
	public void setIscompete(Integer iscompete) {
		this.iscompete = iscompete;
	}
	public Double getNewprice() {
		return newprice;
	}
	public void setNewprice(Double newprice) {
		this.newprice = newprice;
	}
	public String getDiscribe() {
		return discribe;
	}
	public void setDiscribe(String discribe) {
		this.discribe = discribe;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
