package org.jeonju.crtl.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeonju.dao.TourDAO;

/**
 * Servlet implementation class MyTBought
 */
@WebServlet("/my_page/t_bought_list")
public class MyTBought extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyTBought() {
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
		
		HttpSession session = request.getSession();
		int no = Integer.parseInt((String)session.getAttribute("no"));
		
		
		TourDAO td = new TourDAO();
		request.setAttribute("tboughtList", td.getTBoughtList(no));
		
		RequestDispatcher view = request.getRequestDispatcher("/user/t_bought.jsp");
		view.forward(request, response);
	}

}
