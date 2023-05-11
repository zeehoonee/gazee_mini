package com.multi.gazee;

public class CommunityTempVO {
	private String memId;
	private String title;
	private String content;
	private String img;
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "reportTempVO [memId=" + memId + ", title=" + title + ", content=" + content + ", img=" + img + "]";
	}
	
	
}
