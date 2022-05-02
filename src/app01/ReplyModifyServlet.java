package app01;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class ReplyModifyServlet
 */
@WebServlet("/reply/modify")
public class ReplyModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReplyModifyServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		ServletContext application = getServletContext();
		this.ds = (DataSource) application.getAttribute("dbpool");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// request 파라미터 수집 가공
		String boardIdStr = request.getParameter("boardId"); //jsp에 추가 하세요.
		String replyIdStr = request.getParameter("replyId");
		String content = request.getParameter("content"); // jsp와 매칭안됨, 적절히 수정하세요.
		
		// Dao 일시키고
		dao.update(con, dto);
		/*
		 * 쿼리: 
		 * 
		 * UPDATE Reply
		 * SET content = ?
		 * WHERE id = ? 
		 * 
		 */
		
		// 결과 세팅
		// 안해도됨..
		
		// forward / redirect
		String location = "/board/get" + "?" + "id=" + boardIdStr;
		response.sendRedirect(location);
		
		
	}

}







