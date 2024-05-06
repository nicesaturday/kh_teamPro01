package org.jeonju.crtl.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.QnaDAO;

/**
 * Servlet implementation class QnaInsertQ
 */
@WebServlet("/qna_insert_q")
public class QnaInsertQ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaInsertQ() {
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
		
		RequestDispatcher view = request.getRequestDispatcher("/qna/qnaInsertQ.jsp");
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
		
		int user_no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter("title");
		String comment = request.getParameter("comment");
		
		QnaDAO qd = new QnaDAO();
		cnt = qd.insertQ(user_no, title, comment);
		
		
		if(cnt > 0) {
		  response.sendRedirect("/qna_list");
		} else {
			RequestDispatcher view = request.getRequestDispatcher("/qna/qnaInsertQ.jsp");
			view.forward(request, response);
		}
	}

}
