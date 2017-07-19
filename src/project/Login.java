package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Login {
	Connection conn;

	public void connect() throws ClassNotFoundException, SQLException {

		Class c = Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "903880");
	}

	public String login(String e_id, String pw) throws Exception {
		PreparedStatement ps = conn.prepareStatement("select *from user_details where e_id=? and pw=?");
		ps.setString(1, e_id);
		ps.setString(2, pw);
		ResultSet rs = ps.executeQuery();
		if (rs.next())
			return "user";
		else {
			ps = conn.prepareStatement("select *from admin_details where un=? and ps=?");
			ps.setString(1, e_id);
			ps.setString(2, pw);
			rs = ps.executeQuery();
			if (rs.next())
				return "admin";
			else
				return "nop";

		}

	}

	public boolean insert(int id, String fn, String ln, String dob, String gn, String st, String lc, String cty,
			String state, String pin, String m_no, String e_id, String pw) throws SQLException {
		Statement stmnt = conn.createStatement();
		int rowcount = stmnt.executeUpdate("insert into user_details values ('" + id + "','" + fn + "', '" + ln
				+ "' ,'" + dob + "','" + gn + "', '" + lc + "' ,'" + st + "', '" + cty + "' ,'" + state + "', '" + pin
				+ "','" + m_no + "', '" + e_id + "', '" + pw + "'   )");
		return true;
	}
}
