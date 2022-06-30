package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.Member_DAO;
import DTO.Member_DTO;

/**
 * Servlet implementation class joinController
 */
@WebServlet("/join.do")
public class joinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public joinController() {
        super();
        // TODO Auto-generated constructor stub
    }

protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException{
    	
    	req.setCharacterEncoding("utf-8");
    	
    	String bbs_Id = req.getParameter("bbs_Id");
    	String bbs_Pw = req.getParameter("bbs_Pw");
    	String bbs_Name = req.getParameter("bbs_Name");
    	String bbs_Tel = req.getParameter("bbs_Tel");
    	
    	try {
    		Member_DAO dao = new Member_DAO();
    		Member_DTO dto = new Member_DTO(bbs_Id, bbs_Pw, bbs_Name, bbs_Tel);
    		dao.join(dto);
    	} catch(Exception e) {
    		e.printStackTrace();
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
    		script.println("alert('database error')");
    		script.println("</script>");
    	}
    	
    	response.sendRedirect("/loginPage.jsp");
    	
    }

}
