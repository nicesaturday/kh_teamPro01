package org.jeonju.crtl.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeonju.dao.UserDAO;
import org.jeonju.dto.User;

import com.crypto.util.AES256;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		
		RequestDispatcher view = request.getRequestDispatcher("/user/login.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		
		//파라미터 변수에 받기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pw_exist = "";
		String key = "%02x";
		
		//해당 id를 가진 유저 탐색
		UserDAO ud = new UserDAO();
		User user = ud.getUserOne(id);
		
		//없는 경우 에러 메세지 렌더
		if(user == null) {
			//에러 메세지 view 렌더 (아이디 존재 x);
		}
		try {
			pw_exist = AES256.decryptAES256(user.getPw(), key);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//비밀번호 일치시 렌더
		if(pw.equals(pw_exist)) {
			session.setAttribute("no", user.getNo());
			session.setAttribute("id", user.getId());
			session.setAttribute("name", user.getName());
			session.setAttribute("email", user.getEmail());
			session.setAttribute("phone_num", user.getPhone_num());
			session.setAttribute("address", user.getAddress());
			session.setAttribute("resdate", user.getResdate());
			response.sendRedirect("/");
		} else {
			//에러 메세지 view 렌더(비밀번호 일치 x);
		}
		
		
	}

}
