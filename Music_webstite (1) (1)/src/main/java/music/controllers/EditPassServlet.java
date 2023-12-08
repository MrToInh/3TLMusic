package music.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import music.business.User;
import music.data.UserDAO;

/**
 * Servlet implementation class UpdateuserServlet
 */
@WebServlet("/EditPassServlet")
public class EditPassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditPassServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/// Extract user data from the request
		// Retrieve cookies from the request
		UserDAO userDAO = new UserDAO(); // Assuming you have a UserDAO for database operations
		String username = request.getParameter("username");
		String newPassword = request.getParameter("newPassword");
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");

		// Create a User object with the updated information
		User user = new User(username, newPassword, fullname, email);
		// Update the user in the database
		boolean success = userDAO.updateUser(user);

		// Redirect or forward based on the update operation result
		if (success) {
			// Redirect to a success page or profile page
			  RequestDispatcher dispatcher = request.getRequestDispatcher("/LoginServlet");
	            dispatcher.forward(request, response); // Adjust as per your URL structure
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/Edit.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);
	}

}
