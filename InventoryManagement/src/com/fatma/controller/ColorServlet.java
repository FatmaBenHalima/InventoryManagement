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
 * Servlet implementation class ColorServlet
 */
@WebServlet("/ColorServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 *2,
			maxFileSize=1024 * 1024 *10,
			maxRequestSize = 1024 *1024 *50)
public class ColorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String c=request.getParameter("code");
		String n=request.getParameter("name");
		String role=request.getParameter("role");
		String stt=request.getParameter("st");
		Part part=request.getPart("image");
		String filename=extractFileName(part);
		String savepath="C:\\Users\\ASUS\\workspace\\WMS\\WebContent\\images"+File.separator+filename;
		File filesavedir=new File(savepath);
		part.write(savepath+File.separator);
		try
		{
			  Class.forName("com.mysql.jdbc.Driver");
				Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/wms","root","");
				System.out.println("ok");
						PreparedStatement st=(PreparedStatement) con.prepareStatement("insert into colors values (?,?,?)");
						st.setString(1, c);
						st.setString(2, n);
						st.setString(3, filename);
						int r=st.executeUpdate();
						if(r==1)
						{
							 response.sendRedirect("ColorsList.jsp?role="+role+"&st="+stt);
						}
						else
						{
							 response.sendRedirect("AddColor.jsp?role="+role+"&st="+stt);
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
