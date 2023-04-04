package com.sogondak.action;

public class ActionForward {
	//자바빈즈 형태로 만들 것
	private boolean isRedirect;	//true : redirect, false : forward
	private String path;
	
	public ActionForward() {}

	public ActionForward(boolean isRedirect, String path) {
		super();
		this.isRedirect = isRedirect;
		this.path = path;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
	
	


}
