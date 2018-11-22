package com.fatma.controller;

import java.io.File;
import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class MajColor
 */
@WebServlet("/MajColor")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 *2,
maxFileSize=1024 * 1024 *10,
maxRequestSize = 1024 *1024 *50)
public class MajColor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String r=request.getParameter("role");
	String s=request.getParameter("st");
	String n=request.getParameter("nom");
	Part part=request.getPart("image");
	String filename=extractFileName(part);
	String savepath="C:\\Users\\ASUS\\workspace\\WMS\\WebContent\\images"+File.separator+filename;
	File filesavedir=new File(savepath);
	part.write(savepath+File.separator);
	String c=request.getParameter("code");
	String g=request.getParameter("ok");
	PreparedStatement st;
	
	
	   try
  		{
  			  Class.forName("com.mysql.jdbc.Driver");
  		Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/wms","root","");
  		System.out.println("ok");
  		if(filename.equals(""))
  			{st=(PreparedStatement) con.prepareStatement("update colors set name=? where code=? ");
  			st.setString(1, n);
  			st.setString(2, c);
  			
  			}
  			else
  			{	 st=(PreparedStatement) con.prepareStatement("update colors set name=?, image=? where code=? ");
  			st.setString(1, n);
  			st.setString(2, filename);
  			st.setString(3, c);
  			}
  		
int az=st.executeUpdate();
  		if(az==1)
  		{
  			 response.sendRedirect("ColorsList.jsp?role="+r+"&st="+s);
  		}
  		else
  		{
  			 response.sendRedirect("MAJColors.jsp?role="+r+"&st="+s);
  		}
  				
  					
  		}
  		catch(Exception e)
  		{
  			
  		}
	   finally
		{
			 Runtime.getRuntime().addShutdownHook(new Thread() 
			    { 
			      public void run() 
			      { 
			        System.out.println("Shutdown Hook is running !"); 
			      } 
			    }); 
			    System.out.println("Application Terminating ..."); 
		}
	}

	private String extractFileName(Part part)
	{
		String contentDisp=part.getHeader("content-disposition");
		String[]items=contentDisp.split(";");
		for (String s : items)
		{
			if(s.trim().startsWith("filename"))
			{
				return s.substring(s.indexOf("=") + 2,  s.length() - 1);
			}
		}
		return "";
	}

}

