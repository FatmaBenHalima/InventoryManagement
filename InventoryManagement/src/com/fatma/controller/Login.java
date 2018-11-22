package com.fatma.controller;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String l=request.getParameter("email");
		String p=request.getParameter("pass");
		  try
     		{
     			  Class.forName("com.mysql.jdbc.Driver");
     		Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/wms","root","");
     		System.out.println("ok");
     				PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from user,roleuser where user.mail=? and password=? ");
     				st.setString(1, l);
     				st.setString(2, p);
     				ResultSet r=st.executeQuery();
     				if(r.next())
     				{
     					String ro=r.getString(8); 
     					String s=r.getString(4); 
     					if(ro.equals("Finance"))
     					{
     						response.sendRedirect("ApprouvePI.jsp?role="+ro+"&st="+s);
     					}
     					else if(ro.equals("WareHouseKeeper"))
     					{
     						response.sendRedirect("index.jsp?role="+ro+"&st="+s);
     					}
     					else
     					{
     				response.sendRedirect("index.jsp?role="+ro+"&st="+s);
     					}
     				}
     				else
     				{
     					response.sendRedirect("Login.jsp");
     				}
     				
     					
     		}
     		catch(Exception e)
     		{
     			response.sendRedirect("Login.jsp");
     		}
	}

}
