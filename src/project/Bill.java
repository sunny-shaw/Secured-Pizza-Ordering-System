package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Bill {
	Connection conn;

	public void connect() throws ClassNotFoundException, SQLException {

		Class c = Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "903880");
	}
	
	

}
