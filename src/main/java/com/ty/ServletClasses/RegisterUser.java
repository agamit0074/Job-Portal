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

@WebServlet("/register-user")
public class RegisterUser extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fullName = req.getParameter("fullName");
		String email = req.getParameter("email");
		String contactNo = req.getParameter("contactNo");
		String degree = req.getParameter("degree");
		String stream = req.getParameter("stream");
		String yop = req.getParameter("yop");
		String aggregate =  req.getParameter("aggregate");
		String domain = req.getParameter("domain");
		String keySkills = req.getParameter("keySkills");
		String password = req.getParameter("password");
		
		try {
			Class.forName("org.postgresql.Driver");
			String url  = "jdbc:postgresql://localhost:5432/job_portal?user=postgres&password=root";
			Connection connection = DriverManager.getConnection(url);
			String sql = "insert into user values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1,fullName);
			ps.setString(2,email);
			ps.setString(3,contactNo);
			ps.setString(4, degree);
			ps.setString(5, stream);
			ps.setString(6, yop);
			ps.setString(7, aggregate);
			ps.setString(8, domain);
			ps.setString(9, keySkills);
			ps.setString(10, password);
			ps.execute();
			connection.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("candidate-login.jsp").forward(req, resp);
	}
}
