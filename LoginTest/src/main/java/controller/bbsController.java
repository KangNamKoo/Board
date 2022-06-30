package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Board_DAO;




/**
 * Servlet implementation class listController
 */
@WebServlet("/bbs.do")
public class bbsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bbsController() {
        super();
        // TODO Auto-generated constructor stub
    }

protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException{
    	
    	req.setCharacterEncoding("utf-8");
    	response.setCharacterEncoding("utf-8");
    	
    	Board_DAO bDao = new Board_DAO();
    	List list = bDao.getlist();
    	req.setAttribute("list", list);
    	req.getRequestDispatcher("/bbs.jsp").forward(req, response);
    	
    }

}
