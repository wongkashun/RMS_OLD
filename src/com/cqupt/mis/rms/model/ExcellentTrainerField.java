package com.cqupt.mis.rms.model;

import java.util.Date;

/**
 * 可动态添加数据库字段的类
 * 优秀培训师的字段类
 * @author Bern
 * 2014.10.21
 */
public class ExcellentTrainerField {
	private int id;		//字段id
	private String name;		//字段在数据库中的名字
	private String description;		//字段在页面展示的名字
	private int order;		//字段展示顺序
	private int isDelete;		//字段是否删除，0为未删除，1为删除
	private Date submittime;		//字段提交时间
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	public Date getSubmittime() {
		return submittime;
	}
	public void setSubmittime(Date submittime) {
		this.submittime = submittime;
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	
}
