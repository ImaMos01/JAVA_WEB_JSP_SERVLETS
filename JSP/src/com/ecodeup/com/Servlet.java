package com.ecodeup.com;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Servlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
		List<jbean> estList = new ArrayList<jbean>();
		jbean est1 = new jbean();
		est1.setEdad(8); est1.setEstudiante("Juana");est1.setIdentificacion("col12");
		jbean est2 = new jbean();
		est2.setEdad(20); est2.setEstudiante("Pepe");est1.setIdentificacion("col15");
		estList.add(est1);empList.add(est2);
		request.setAttribute("estList", estList);
	
		getServletContext().getRequestDispatcher("/jsp/index.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
