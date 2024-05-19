package org.jeonju.crtl.notice;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.NoticeDAO;

/**
 * Servlet implementation class NoticeEdit
 */
@WebServlet("/notice_edit")
public class NoticeEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeEdit() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int cnt = 0;
		int no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter("title");
		String comment = request.getParameter("comment");
		
		NoticeDAO nd = new NoticeDAO();
		cnt = nd.updateNoticeOne(no, title, comment);
		
		if(cnt > 0) {
			response.sendRedirect("/jeonju/notice_list");
		}
	}

}