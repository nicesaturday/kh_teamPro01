package org.jeonju.crtl.tour;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.TourDAO;
import org.jeonju.dto.tour.TBought;

/**
 * Servlet implementation class TourInsert
 */
@WebServlet("/tour_reserve")
public class TourInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TourInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		RequestDispatcher view = request.getRequestDispatcher("/tour/tourReserve.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		int cnt = 0;
		
		String start_time = request.getParameter("start_time");
		int headcount = Integer.parseInt(request.getParameter("headcount"));
		int user_no = Integer.parseInt(request.getParameter("user_no"));
		int t_no = Integer.parseInt(request.getParameter("t_no"));
		
		TBought tbought = new TBought(0, 
							  		  start_time, 
							  		  "", 
							  		  headcount, 
							  		  user_no, 
							  		  t_no);
		
		TourDAO td = new TourDAO();
		cnt = td.insertTbought(tbought);
		
		if(cnt > 0) {
			response.sendRedirect("/");
		}
	}

}
