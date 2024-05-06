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
 * Servlet implementation class QnaInsertA
 */
@WebServlet("/qna_insert_a")
public class QnaInsertA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaInsertA() {
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
		
		RequestDispatcher view = request.getRequestDispatcher("/qna/qnaInsertA.jsp");
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
		
		int user_no = Integer.parseInt(request.getParameter("user_no"));
		String title = request.getParameter("title");
		String comment = request.getParameter("comment");
		int parno = Integer.parseInt(request.getParameter("parno"));
		
		
		QnaDAO qd = new QnaDAO();
		cnt = qd.insertA(user_no, title, comment, parno);
		
		if(cnt > 0) {
			response.sendRedirect("/qna_list");
		}
	}

}
