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
@WebServlet("/BbsCreateForm.do")
public class BbsCreateForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BbsCreateForm() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {

		String bbs_Num = req.getParameter("bbs_Num");

		Board_DAO dao = new Board_DAO();
		Board_DTO dto = new Board_DTO();
				
		dto = dao.selectById(bbs_Num);
		
		req.setAttribute("bbs_Num", dto);
		
		req.getRequestDispatcher("/BbsCreate.jsp").forward(req, response);

	}

}
