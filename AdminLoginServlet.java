package com.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/alog")
public class AdminLoginServlet extends HttpServlet
{
	@Override
     protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
     {
		 String uname=req.getParameter("u_name");
		 String pwd=req.getParameter("u_pwd");
    	 AdminLoginDAO ald=new AdminLoginDAO();
    	 AdminBean abean=ald.checkAdminLogin(uname,pwd);
    	 
    	 if(abean==null)
    	 {
    		 req.setAttribute("msg", "Invalid Admin Credentials");
    		 req.getRequestDispatcher("ALogin.jsp").forward(req, res);
    	 }
    	 else
    	 {
    		 HttpSession session=req.getSession();
    		 session.setAttribute("abean", abean);
    		 req.getRequestDispatcher("AdminHome.jsp").forward(req, res);
    	 }
     }
}
