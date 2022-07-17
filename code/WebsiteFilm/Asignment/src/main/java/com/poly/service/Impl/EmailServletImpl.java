package com.poly.service.Impl;

import javax.servlet.ServletContext;

import com.poly.entity.User;
import com.poly.service.EmailService;
import com.poly.util.SendEmailUtil;

public class EmailServletImpl implements EmailService{

	private static final String Email_Welcome_Subject = "Welcome to Online Entertaiment";
	private static final String Email_Forgot_PassWord = "Online Entertaiment - New Password"; 
	
	@Override
	public void sendEmail(ServletContext context, User recipent, String type) {
        // reads SMTP server setting from web.xml file
        String host = context.getInitParameter("host");
        String port = context.getInitParameter("port");
        String user = context.getInitParameter("user");
        String pass = context.getInitParameter("pass");
        
        try {
			String content = null;
			String subject = null;
			switch (type) {
				case "welcome": 
					subject = Email_Welcome_Subject;
					content = "Dear " + recipent.getUsername() + ", hope you have a good time!";
					break;
				case "forgot":
					subject = Email_Forgot_PassWord;
					content = "Dear " + recipent.getUsername() + ", your new password here :" + recipent.getPassword();
					break;
				default :
					subject = "Online Entertaiment";
					content = "Maybe this email is wrong, dont't care about it";
					break;
				}			
				SendEmailUtil.sendEmail(host, port, user, pass, recipent.getEmail(), subject, content);
			} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
