package com.ty.ServletClasses;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("save_job")
public class SaveJob extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String jobTitle = req.getParameter("jobTitle");
        String employmentType = req.getParameter("employmentType");
        String workMode = req.getParameter("workMode");
        String locationCity = req.getParameter("locationCity");
        String salary = req.getParameter("salary");
        String degree = req.getParameter("degree");
        String minPercentage = req.getParameter("minPercentage");
        String experience = req.getParameter("experience");
        String bond = req.getParameter("bond");
        String yops = req.getParameter("yop");
        String skills = req.getParameter("skills");
        String responsibilities = req.getParameter("responsibilities");
        String description = req.getParameter("description");
        
        String email = (String)req.getSession().getAttribute("email");
        

	}

}
