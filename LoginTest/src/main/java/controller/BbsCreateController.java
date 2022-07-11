package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Board_DAO;
import DTO.Board_DTO;

/**
 * Servlet implementation class listCreateController
 */
@WebServlet("/BbsCreate.do")
public class BbsCreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BbsCreateController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {

		String str = req.getParameter("bbs_Num");
		int bbs_Num = Integer.parseInt(str);
		String bbs_Title = req.getParameter("bbs_Title");
		String bbs_Content = req.getParameter("bbs_Content");
		String bbs_Regdate = req.getParameter("bbs_Regdate");
		String bbs_UserId = req.getParameter("bbs_UserId");

		try {
			Board_DAO dao = new Board_DAO();
			Board_DTO dto = new Board_DTO(bbs_Num, bbs_Title, bbs_Content, bbs_Regdate, bbs_UserId);
			dao.setlist(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}

		response.sendRedirect("/Bbs.do");

	}

}
