package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Customer;

/**
 * Servlet implementation class S14Servlet20
 */
@WebServlet("/S14Servlet20")
public class S14Servlet20 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet20() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerID, CustomerName, City, Country, PostalCode "
				+ "FROM Customers ORDER BY CustomerID ";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		List<Customer> list = new ArrayList<>();
		
		try (Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				) {
			
			while (rs.next()) {
				Customer c = new Customer();
				c.setId(rs.getInt(1));
				c.setName(rs.getString(2));
				c.setCity(rs.getString(3));
				c.setCountry(rs.getString(4));
				c.setPostCode(rs.getString(5));
				
				list.add(c);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("customerList", list);
		
		String path = "/WEB-INF/view/chap14/ex14.jsp";
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
