package portfoliojava;

import java.sql.*;
import java.util.ArrayList;
import mvc.DigitalDTO;

public class IndexDAO {
	Connection conn = null; 
	Statement stmt =  null;
	
	void connect() {
		try {
			
			Class.forName("com.mysql.jdbc.Driver"); //java.lang.ClassNotFoundException: com.mysql.jdbc.Driver -> address is "WebContents/WEB-INF/lib"
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio", "root", "1234");   //pss:1234 or fhaksyffl13
			
//			Class.forName("com.mysql.jdbc.Driver");                                     
//		    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaschool","root","1234");   
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<DigitalDTO> select() {
		ArrayList<DigitalDTO> glist = new ArrayList<DigitalDTO>();
		DigitalDTO ddto = null;
		String sql = "select serial_number, title, price from portfolio.game";
				
		connect();
		
			try {
				stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					ddto = new DigitalDTO();
					
					ddto.setSerial_number(rs.getString("serial_number"));
					ddto.setTitle(rs.getString("title"));
					ddto.setPrice(rs.getInt("price"));
					
					glist.add(ddto);
					
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return glist;
	}
}
