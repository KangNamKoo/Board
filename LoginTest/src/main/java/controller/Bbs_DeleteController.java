package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Board_DAO;
import DTO.Board_DTO;

/**
 * Servlet implementation class Bbs_DeleteController
 */
@WebServlet("/Bbs_Delete.do")
public class Bbs_DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bbs_DeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }
	
    protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String bbs_Num = req.getParameter("bbs_Num");
		Board_DAO dao = new Board_DAO();
		dao.delete(Integer.parseInt(bbs_Num));
		
		response.sendRedirect("bbs.do");

	}

}
