package com.vaannila.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

    private String username;

    private String password;

    private static final long serialVersionUID = -2613425890762568273L;

    public String login() {
        return "welcome";
    }

    @Override
    public String execute() throws Exception {
        if ("zhangsan".equals(this.getUsername())
                && "1234".equals(this.getPassword()))
            return SUCCESS;
        else
            return ERROR;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}