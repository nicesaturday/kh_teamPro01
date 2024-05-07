package org.jeonju.crtl.tour;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.TourDAO;
import org.jeonju.dto.tour.Tourism;

/**
 * Servlet implementation class TourList
 */
@WebServlet("/tourList")
public class TourList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TourList() {
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
		
		List<Tourism> tourismList = new ArrayList<Tourism>();
		
		TourDAO td = new TourDAO();
		
		tourismList = td.getTourismList();
		
		RequestDispatcher view = request.getRequestDispatcher("/tour/tourList.jsp");
		view.forward(request, response);
		
	}

}