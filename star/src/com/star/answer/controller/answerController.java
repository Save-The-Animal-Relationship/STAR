package com.star.answer.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.star.Action;
import com.star.Result;
import com.star.answer.dao.AnswerDAO;

public class answerController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AnswerDAO answerDAO = new AnswerDAO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		return result;
	}

}
