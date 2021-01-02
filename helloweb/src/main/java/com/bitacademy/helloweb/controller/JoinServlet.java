package com.bitacademy.helloweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post방식으로 넘어오는 데이터를 utf-8로 인코딩하라
		request.setCharacterEncoding("utf-8"); 
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String birthYear = request.getParameter("birthYear");
		String gender = request.getParameter("gender");
		String[] hobbies = request.getParameterValues("hobby");//멀티값이 될 수 있어 배열로 받아야 함.
		String desc = request.getParameter("desc");
		
		System.out.println(email);
		System.out.println(password);
		System.out.println(birthYear);
		System.out.println(gender);
		for (String hobby : hobbies) {
			System.out.println(hobby);
		}
		System.out.println(desc);
		
		response.setContentType("text/html; charset=utf-8"); //나가는 거 인코딩
		response.getWriter().println("ok!");
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
