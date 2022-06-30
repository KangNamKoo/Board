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
@WebServlet("/bbs_view.do")
public class bbs_ViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bbs_ViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException{
    	
    	req.setCharacterEncoding("utf-8");
    	response.setCharacterEncoding("utf-8");
    	
    	String bbs_Num = (String)req.getParameter("bbs_Num");
    	
    	Board_DAO bDao = new Board_DAO();
    	Board_DTO bDto = new Board_DTO();
    	bDto = bDao.selectById(bbs_Num);	// ?? 왜 저기 한번 더 담을까?
    	
    	req.setAttribute("bbs_view", bDto);
    	
    	req.getRequestDispatcher("/bbs_view.jsp").forward(req, response);
    	
    }

}
