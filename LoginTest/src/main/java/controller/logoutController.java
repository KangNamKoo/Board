package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logoutController
 */
@WebServlet("/logout.do")
public class logoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException{
    	
    	// 현재 접속 중인 계정의 세션 객체 꺼내오기
    	HttpSession session = req.getSession();
    	
    	// 세션 해제
    	session.invalidate();
    	try {
    		response.sendRedirect("/loginPage.jsp");
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    }

}
