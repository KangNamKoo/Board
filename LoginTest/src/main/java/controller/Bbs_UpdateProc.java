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
 * Servlet implementation class listController
 */
@WebServlet("/Bbs_UpdateProc.do")
public class Bbs_UpdateProc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Bbs_UpdateProc() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String bbs_Num = req.getParameter("bbs_Num");
		String bbs_Title = req.getParameter("bbs_Title");
		String bbs_Content = req.getParameter("bbs_Content");
		String bbs_Regdate = req.getParameter("bbs_Regdate");

		Board_DAO dao = new Board_DAO();
//		Board_DTO dto = new Board_DTO(bbs_Num, bbs_Title, bbs_Content, bbs_Regdate);
		Board_DTO dto = new Board_DTO();
		dto.setBbs_Title(bbs_Title);
		dto.setBbs_Content(bbs_Content);
		dto.setBbs_Regdate(bbs_Regdate);
		dto.setBbs_Num(bbs_Num);
		dao.update(dto);
		
		response.sendRedirect("/bbs_view.do?bbs_Num="+bbs_Num);

	}

}
