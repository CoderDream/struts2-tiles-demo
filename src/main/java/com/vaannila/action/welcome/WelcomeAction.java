package com.vaannila.action.welcome;

import com.opensymphony.xwork2.ActionSupport;

public class WelcomeAction extends ActionSupport {

	private static final long serialVersionUID = -2613425890762568273L;

	public String welcomeLink() {
		return "welcome";
	}

	public String friendsLink() {
		return "friends";
	}

	public String officeLink() {
		return "office";
	}
}