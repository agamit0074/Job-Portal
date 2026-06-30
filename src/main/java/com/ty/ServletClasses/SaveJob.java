package com.ty.ServletClasses;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/save_job")
public class SaveJob extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String jobTitle = req.getParameter("jobTitle");
        String employmentType = req.getParameter("employmentType");
        String workMode = req.getParameter("workMode");
        String locationCity = req.getParameter("locationCity");
        String salary = req.getParameter("salary");
        String[] degrees = req.getParameterValues("degree");
        String minPercentage = req.getParameter("minPercentage");
        String experience = req.getParameter("experience");
        String bond = req.getParameter("bond");
        String[] yops = req.getParameterValues("yop");
        String skills = req.getParameter("skills");
        String responsibilities = req.getParameter("responsibilities");
        String description = req.getParameter("description");
        String email = (String)req.getSession().getAttribute("email");
        String degree ="";
        for(String s : degrees) {
        	degree.concat(s).concat(" ");
        }
        String yop="";
        for(String s:yops) {
        	yop.concat(s).concat(" ");
        }
 
        try {
            Class.forName("org.postgresql.Driver");
            String url = "jdbc:postgresql://localhost:5432/job_portal?user=postgres&password=root";
            Connection con = DriverManager.getConnection(url);
            String sql = "INSERT INTO job VALUES(NEXTVAL('job_seq'),?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, jobTitle);
            ps.setString(2, employmentType);
            ps.setString(3, workMode);
            ps.setString(4, locationCity);
            ps.setString(5, salary);
            ps.setString(6, degree);
            ps.setString(7, minPercentage);
            ps.setString(8, experience);
            ps.setString(9, bond);
            ps.setString(10, yop);
            ps.setString(11, skills);
            ps.setString(12, responsibilities);
            ps.setString(13, description);
            ps.setString(14, email);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().println("<h2>Error : " + e.getMessage() + "</h2>");
        }
        req.getRequestDispatcher("employee-dashboard.jsp").forward(req, resp);

	}

}
