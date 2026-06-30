package com.ty.ServletClasses;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/second")
public class SecondServletClass extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String contact = req.getParameter("contact");
		
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		out.print("<h1>"+name+"</h1>");
		out.print("<h2>"+contact+"</h2>");
		
	}
}
