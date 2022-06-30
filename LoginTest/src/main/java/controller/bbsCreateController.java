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
@WebServlet("/bbsCreate.do")
public class bbsCreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bbsCreateController() {
        super();
        // TODO Auto-generated constructor stub
    }

protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException{
    	
    	req.setCharacterEncoding("utf-8");
    	response.setCharacterEncoding("utf-8");
    	
    	String bbs_Num = req.getParameter("bbs_Num");
    	String bbs_Title = req.getParameter("bbs_Title");
    	String bbs_Content = req.getParameter("bbs_Content");
    	String bbs_Regdate = req.getParameter("bbs_Regdate");
    	
    	try {
    		Board_DAO dao = new Board_DAO();
    		Board_DTO dto = new Board_DTO(bbs_Num,bbs_Title, bbs_Content, bbs_Regdate);
    		dao.setlist(dto);
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	response.sendRedirect("/bbs.do");
    	
    }

}
