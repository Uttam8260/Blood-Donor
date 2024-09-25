package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

import com.Donorr.Donors;

public class SaveDonor extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SaveDonor() {
        super();
    }

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		try 
		{
			Long phone=Long.parseLong(request.getParameter("phone"));
			String name=request.getParameter("name");
			Long age=Long.parseLong(request.getParameter("age"));
			String group=request.getParameter("group");
			String address=request.getParameter("address");
			String email=request.getParameter("email");
			String gender=request.getParameter("gender");
			
			Donors d=new Donors(phone, name, age, group, address, email, gender);
			Session session=new Configuration().configure().buildSessionFactory().openSession();
			
			
			session.beginTransaction();
			session.save(d);
			session.getTransaction().commit();
			response.sendRedirect("thankdonor.jsp");
			session.close();
			
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		 
	}

}
