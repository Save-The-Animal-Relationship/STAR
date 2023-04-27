package com.star.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.star.Action;
import com.star.Result;
import com.star.user.dao.UserAdminDAO;

public class SelectAllController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		UserAdminDAO userDAO = new UserAdminDAO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		Long userNumber = Long.valueOf(req.getParameter("userNumber"));
		req.setAttribute("user", userDAO.select(userNumber));
		req.setAttribute("users", jsonArray.toString());
		
		result.setPath("templates/adminpage/changeinfo.jsp");
		return result;
	}
}
