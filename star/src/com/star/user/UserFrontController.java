package com.star.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.star.Result;
import com.star.user.controller.SitterDetailOkController;
import com.star.user.controller.SitterListOkController;


public class UserFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String target = req.getRequestURI().replace("/", "").split("\\.")[0];
		Result result = new Result();
		
		System.out.println("프컨들어옴");
		if(target.equals("sitterList")) {
			System.out.println("프컨나감");
			result = new SitterListOkController().execute(req, resp);
			
		} 
		
		if(target.equals("sitterDetailOk"))
			result = new SitterDetailOkController().execute(req, resp);
		
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
