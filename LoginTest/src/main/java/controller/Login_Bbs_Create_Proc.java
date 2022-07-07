package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import DAO.Member_DAO;
import DTO.Member_DTO;

/**
 * Servlet implementation class logincontroller
 */
@WebServlet("/Login_Bbs_Create_Proc.do")
public class Login_Bbs_Create_Proc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login_Bbs_Create_Proc() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {

		String bbs_Id = req.getParameter("bbs_Id");
		String bbs_Pw = req.getParameter("bbs_Pw");

		Member_DAO dao = new Member_DAO();
		int login_Result = dao.login(bbs_Id, bbs_Pw);
		HttpSession session = req.getSession();
		if (login_Result == 1) {
			session.setAttribute("bbs_Id", bbs_Id);
			response.sendRedirect("/Main.jsp");
		} else if (login_Result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('not pw.')");
			script.println("history.back()");
			script.println("</script>");
		} else if (login_Result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('no id.')");
			script.println("history.back()");
			script.println("</script>");
		} else if (login_Result == -2) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('database error')");
			script.println("history.back()");
			script.println("</script>");
		}

	}
}
