package music.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import music.business.Album;
import music.business.Song;
import music.business.User;
import music.data.AlbumDAO;
import music.data.SongDAO;

@WebServlet("/AlbumServlet")
public class AlbumServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy thông tin từ form
        String albumName = request.getParameter("albumname");
        String singerName = request.getParameter("singername");

        // Kiểm tra nếu albumName và singerName không rỗng
        if (albumName != null && !albumName.isEmpty() && singerName != null && !singerName.isEmpty()) {
            // Tạo đối tượng Album
        	HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            if (user != null) {
                // Sử dụng thông tin user ở đây
                request.setAttribute("user", user);
            }

            Album newAlbum = new Album();
            newAlbum.setAlbumname(albumName);
            newAlbum.setSingername(singerName);

            // Lưu album vào cơ sở dữ liệu
            AlbumDAO albumDAO = new AlbumDAO();
            albumDAO.addAlbum(newAlbum);

            // Chuyển hướng đến trang hiển thị danh sách album
            response.sendRedirect(request.getContextPath() + "/HomeServlet");

        } else {
            // Nếu albumName hoặc singerName rỗng, có thể xử lý thông báo lỗi hoặc chuyển hướng đến trang lỗi
            response.sendRedirect(request.getContextPath() + "/error.jsp");
        }
    }
	 protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        // Lấy thông tin từ cơ sở dữ liệu (hoặc bất kỳ xử lý nào khác cần thiết)
	        AlbumDAO albumDAO = new AlbumDAO();
	        List<Album> albums = albumDAO.getAllAlbums();

	        // Đặt danh sách album vào request để truyền đến JSP
	        request.setAttribute("albums", albums);

	        // Chuyển hướng đến trang hiển thị danh sách album
	        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/showAllAlbums.jsp");
	        dispatcher.forward(request, response);
	    }
}