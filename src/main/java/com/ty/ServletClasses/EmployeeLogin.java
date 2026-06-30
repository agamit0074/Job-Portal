package com.ty.ServletClasses;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/employee-login")
public class EmployeeLogin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		try {
			Class.forName("org.postgresql.Driver");
			String url  = "jdbc:postgresql://localhost:5432/job_portal?user=postgres&password=root";
			Connection connection = DriverManager.getConnection(url);
			String sql = "select * from employee where workemail=? and password =?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				System.out.println(rs.getString(1));
				HttpSession session = req.getSession(true);
				session.setAttribute("email",email);
				req.getRequestDispatcher("employee-dashboard.jsp").forward(req, resp);
			}else {
				resp.setContentType("text/html");
				PrintWriter out = resp.getWriter();
				out.print("Incorecct Email Or Password");
				req.getRequestDispatcher("employee-login.jsp").include(req, resp);
			}
			connection.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
