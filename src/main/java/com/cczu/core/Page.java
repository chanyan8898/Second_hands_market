package com.cczu.core;

import java.util.List;

public class Page<T> {

	private int pc;// ��ǰҳ��page code
	private int tr;// �ܼ�¼��total record
	private int ps;// ÿҳ��¼��page size
	private List<T> beanList;// ��ǰҳ�ļ�¼
	private String url;//����
	
	//������ҳ��
	public int getTp() {
		// ͨ���ܼ�¼����ÿҳ��¼����������ҳ��
		int tp = tr / ps;
		return tr%ps==0 ? tp : tp+1;
	}

	public int getPc() {
		return pc;
	}

	public void setPc(int pc) {
		this.pc = pc;
	}
	public int getTr() {
		return tr;
	}
	public void setTr(int tr) {
		this.tr = tr;
	}
	public int getPs() {
		return ps;
	}
	public void setPs(int ps) {
		this.ps = ps;
	}
	public List<T> getBeanList() {
		return beanList;
	}
	public void setBeanList(List<T> beanList) {
		this.beanList = beanList;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "PageBean [pc=" + pc + ", tr=" + tr + ", ps=" + ps
				+ ", beanList=" + beanList + ", url=" + url + "]";
	}	
	
}
