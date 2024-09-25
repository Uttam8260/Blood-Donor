package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

import com.Donorr.Donors;
import com.Donorr.Users;

 
public class SaveUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
    public SaveUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try 
		{
			 
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String pass=request.getParameter("password");
			String con_pass=request.getParameter("confirm-password");
			
			Users u=new Users(name, email, pass);
			
			if(pass.equals(con_pass))
			{
				Session session=new Configuration().configure().buildSessionFactory().openSession();
				session.beginTransaction();
				session.save(u);
				session.getTransaction().commit();
				response.sendRedirect("userdashboard.jsp");
				session.close();
				
			}
			else
			{
				response.sendRedirect("usererror.jsp?name="+name+"&email="+email+"&pass="+pass+"&con_pass="+con_pass);
			}
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
