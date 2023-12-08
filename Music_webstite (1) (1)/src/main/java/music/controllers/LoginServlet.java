package music.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import music.data.UserDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("MESSAGE", "");
		RequestDispatcher rd = request.getRequestDispatcher("/views/Login.jsp");
		Cookie arr[]=request.getCookies();
		for(Cookie o: arr)
		{
			if(o.getName().equals("user")) {
				request.setAttribute("user", o.getValue());
			}
			if(o.getName().equals("pass")) {
				request.setAttribute("pass", o.getValue());
			}
		}
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        UserDAO userDAO = new UserDAO();

	        // Kiểm tra đăng nhập
	        if (userDAO.CheckLogin(username, password)) {
	            // Tạo session và lưu username
	            HttpSession session = request.getSession();
	            session.setAttribute("username", username);

	            // Tạo Cookie để lưu thông tin đăng nhập
	            Cookie userCookie = new Cookie("user", username);
	            Cookie passCookie = new Cookie("pass", password);
	            userCookie.setMaxAge(60 * 60 * 24); // Thời gian sống của Cookie (24 giờ)
	            passCookie.setMaxAge(60 * 60 * 24);

	            // Thêm Cookie vào response
	            response.addCookie(userCookie);
	            response.addCookie(passCookie);

	            // Chuyển hướng người dùng đến trang main.jsp
	            response.sendRedirect(request.getContextPath() + "/HomeServlet");

	        } else {
	            // Nếu đăng nhập không thành công, set thông báo lỗi và chuyển hướng lại trang Login.jsp
	            RequestDispatcher rd = request.getRequestDispatcher("/views/Login.jsp");
	            rd.forward(request, response);
	        }
	    }
}
