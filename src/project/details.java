package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class details
 */
@WebServlet("/details")
public class details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public details() {
        super();
    }
    
    static Connection conn;
    
    public static void connect() {
    	try {
			Class c = Class.forName("orale.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","903880");
	    	
	    
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e);
		}
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session != null) {
			ArrayList<String> pizzaId = new ArrayList<String>();
			ArrayList<String> pizzaName = new ArrayList<String>();
			String orderId;
			String buffer;
			ArrayList<String> pizzaPrice = new ArrayList<String>();
			int length;
			add_del ob = new add_del();
			orderId = ob.generateRandomString();
			session.setAttribute("orderId", orderId);
			pizzaId = (ArrayList<String>) session.getAttribute("order");
			length = pizzaId.size(); 
			connect();
			for(int i = 0; i < length; i++) { //error will be resolved after length is assigned value
				PreparedStatement ps;
				try {
					ps = conn.prepareStatement("select * from table where pizzaid = ?");
					ps.setString(1, pizzaId.get(i));
					ResultSet rs = ps.executeQuery();
					 while(rs.next())
					 {
						buffer = rs.getString("pr");
						pizzaPrice.add(buffer);
						buffer = rs.getString("nm");
						pizzaPrice.add(buffer);
					 }
				} catch (SQLException e) {
					System.out.println(e);
				}
			}
			session.setAttribute("PizzaPrice", pizzaPrice);
			session.setAttribute("PizzaName", pizzaName);
		}
		response.setContentType("text/html");
		PrintWriter wr = response.getWriter();
		wr.println("<html><head></head><body>");
		wr.println("<jsp:forward page=\"orderList.jsp\" />");
		wr.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
