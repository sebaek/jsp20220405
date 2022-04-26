package chap14;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap14.javaBeans.Employee;

/**
 * Servlet implementation class S14Servlet17
 */
@WebServlet("/S14Servlet17")
public class S14Servlet17 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet17() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String sql = "SELECT EmployeeID, LastName, FirstName, BirthDate "
				+ "FROM Employees "
				+ "ORDER BY EmployeeID ";
		
		while (rs.next()) {
			Employee emp = new Employee();
			emp.setId(rs.getInt(1));
			emp.setLastName(rs.getString(2));
			emp.setFirstName(rs.getString(3));
			emp.setBirthDate(rs.getString(4));
			
			list.add(emp);
		}
		request.setAttribute("employeeList", list);
		
		String path = "/WEB-INF/view/chap14/ex11.jsp"; // 직원 목록이 table로 출력
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
