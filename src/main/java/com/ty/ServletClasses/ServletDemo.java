package com.ty.ServletClasses;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/form")
public class ServletDemo extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String contact = req.getParameter("contact");
		
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		out.print("<h1>"+name+"</h1>");
		out.print("<h2>"+contact+"</h2>");
		out.print("<form action=\"second\" method=\"post\">");
		out.print("<input type=\"hidden\" name=\"name\" value=\""+name+"\">");
		out.print("<input type=\"hidden\" name=\"contact\" value=\""+contact+"\">");
		out.print("<button type=\"submit\">Second</button></form>");
	}

}
