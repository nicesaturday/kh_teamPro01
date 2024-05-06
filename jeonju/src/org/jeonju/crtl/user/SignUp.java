package org.jeonju.crtl.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.UserDAO;
import org.jeonju.dto.User;

import com.crypto.util.AES256;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/signup")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
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
		UserDAO ud = new UserDAO();
		//id중복체크는 js에서 한다.
		String pw = request.getParameter("pw");
		String key = "%02x";
		
		try {
			pw = AES256.encryptAES256(pw, key);
		} catch (Exception e) {
			e.printStackTrace();
		}

		//주소 상세주소 합치기
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");
		address += address2;
		
		User user = new User(0, 
							request.getParameter("id"), 
							request.getParameter("email"), 
							request.getParameter("name"), 
							pw, 
							request.getParameter("phone_num"), 
							address, 
						    "date");
		
		cnt = ud.insertUser(user);
		
		if(cnt > 0) {
			response.sendRedirect("/login");
		} else {
			request.setAttribute("errorMessage", "가입에 실패했습니다.");
			RequestDispatcher view = request.getRequestDispatcher("/signup");
			view.forward(request, response);
		}
	}

}
