package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Registration1 {
	  Connection conn;
	  public Registration1 () { }
	  public void connect() throws Exception{
		  Class c = Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:XE", "system", "1234");
		  
	  }
	  public boolean insert(String fn,String ln,String dob,String gn,String st,String lc,String cty,String state,String pin,String m_no,String e_id,String pw) throws SQLException {
			Statement stmnt = conn.createStatement();
			int rowcount = stmnt
					.executeUpdate("insert into test3 values ('" + fn
							+ "', '" + ln+ "' ,'" + dob
							+ "','" + gn+ "', '" + lc+ "' ,'" + st
							+ "', '" + cty+ "' ,'" + state
							+ "', '" + pin+ "','" + m_no
							+ "', '" + e_id+ "', '" + pw+ "'   )");
			return true;
		}

}

