package mvc2DB;

import java.sql.Connection;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JdbcUtil {
/*	
	public static Connection getConnection() {
		Connection conn = null;
		
		try {
			
			Context initCtx = new InitialContext();
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource)envCtx.lookup("jdbc/MySQLDB");
			
			conn = ds.getConnection();
			conn.setAutoCommit(false);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void close(Statement stmt){
		
		try {
			
			stmt.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}*/
}
