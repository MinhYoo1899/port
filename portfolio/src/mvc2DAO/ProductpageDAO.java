package mvc2DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.sql.DataSource;
import mvc.DigitalDTO;

public class ProductpageDAO {
	
	DataSource ds;
	Statement stmt =  null;
	Connection conn = null;
	
//	private static ProductpageDAO ppdao;
//	public ProductpageDAO() {}
//	public static ProductpageDAO getInstance() {		
//		if(ppdao == null) {			
//			ppdao = new ProductpageDAO();
//		}
//		return ppdao;
//	}	
//	public void setConnection(Connection conn) {
//		this.conn = conn;
//	}
	
	void connect() {
//		Connection conn;                    // 데이터 접근을 위한 객체
//	    PreparedStatement pstmt = null;     // 쿼리문 실행을 위한 객체
//	    ResultSet rs = null;                // 데이터를 가져와 결과값을 얻기 위한 객체
//      String url = "jdbc:mysql://localhost:3306/portfolio", "root", "1234";
	    
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
	    	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio", "root", "1234");
	    } catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<DigitalDTO> selectList() {
		ArrayList<DigitalDTO>  glist = new ArrayList<DigitalDTO>();
		DigitalDTO ddto = null;
		connect();
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from portfolio.game;");
			
			while (rs.next()) {
				ddto = new DigitalDTO();
				
				ddto.setSerial_number(rs.getString("serial_number"));
				ddto.setTitle(rs.getString("title"));
				ddto.setType(rs.getString("type"));
				ddto.setDeveloper(rs.getString("developer"));
				ddto.setPublisher(rs.getString("publisher"));
				ddto.setTags(rs.getString("tags"));
				ddto.setRelease_date(rs.getString("release_date"));
				ddto.setPrice(rs.getInt("price"));
				ddto.setPlattform(rs.getString("plattform"));
				
				ddto.setExplain(rs.getString("explain"));
				ddto.setAdvert(rs.getString("advert"));
				
				ddto.setLang_VoiceOver(rs.getString("lang_VoiceOver"));
				ddto.setLang_TextOnly(rs.getString("lang_TextOnly"));
				
				ddto.setRatings_Critic(rs.getInt("ratings_Critic"));
				ddto.setRatings_Users(rs.getInt("ratings_Users"));
				
				ddto.setSpecification_Minium_OS(rs.getString("specification_Minium_OS"));
				ddto.setSpecification_Minium_Processor(rs.getString("specification_Minium_Processor"));
				ddto.setSpecification_Minium_Memory(rs.getString("specification_Minium_Memory"));
				ddto.setSpecification_Minium_Graphics(rs.getString("specification_Minium_Graphics"));
				ddto.setSpecification_Storage(rs.getString("specification_Storage"));
				ddto.setSpecification_Recomended_OS(rs.getString("specification_Recomended_OS"));
				ddto.setSpecification_Recomended_Processor(rs.getString("specification_Recomended_Processor"));
				ddto.setSpecification_Recomended_Memory(rs.getString("specification_Recomended_Memory"));
				ddto.setSpecification_Recomended_Graphics(rs.getString("specification_Recomended_Graphics"));

				ddto.setCopyright(rs.getString("copyright"));
	
				glist.add(ddto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) 
					conn.close();
			} catch (Exception e2) {		
				e2.getStackTrace();
			}
		}
		return glist;
	}
	
	public DigitalDTO oneselect (String title) {
		DigitalDTO ddto = null;      //new DigitalDTO();
		PreparedStatement pstmt = null;
		connect();
		
		try {
			
			pstmt = conn.prepareStatement("select * from portfolio.game where title = ?");
			pstmt.setString(1, title);
//			ResultSet rs = stmt.executeQuery("select * from portfolio.game where id = ?;");
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				
				ddto =  new DigitalDTO();
				
				ddto.setSerial_number(rs.getString("serial_number"));
				ddto.setTitle(rs.getString("title"));
				ddto.setType(rs.getString("type"));
				ddto.setDeveloper(rs.getString("developer"));
				ddto.setPublisher(rs.getString("publisher"));
				ddto.setTags(rs.getString("tags"));
				ddto.setRelease_date(rs.getString("release_date"));
				ddto.setPrice(rs.getInt("price"));
				ddto.setPlattform(rs.getString("plattform"));
				
				ddto.setExplain(rs.getString("explain"));
				ddto.setAdvert(rs.getString("advert"));
				
				ddto.setLang_VoiceOver(rs.getString("lang_VoiceOver"));
				ddto.setLang_TextOnly(rs.getString("lang_TextOnly"));
				
				ddto.setRatings_Critic(rs.getInt("ratings_Critic"));
				ddto.setRatings_Users(rs.getInt("ratings_Users"));
				
				ddto.setSpecification_Minium_OS(rs.getString("specification_Minium_OS"));
				ddto.setSpecification_Minium_Processor(rs.getString("specification_Minium_Processor"));
				ddto.setSpecification_Minium_Memory(rs.getString("specification_Minium_Memory"));
				ddto.setSpecification_Minium_Graphics(rs.getString("specification_Minium_Graphics"));
				ddto.setSpecification_Storage(rs.getString("specification_Storage"));
				ddto.setSpecification_Recomended_OS(rs.getString("specification_Recomended_OS"));
				ddto.setSpecification_Recomended_Processor(rs.getString("specification_Recomended_Processor"));
				ddto.setSpecification_Recomended_Memory(rs.getString("specification_Recomended_Memory"));
				ddto.setSpecification_Recomended_Graphics(rs.getString("specification_Recomended_Graphics"));

				ddto.setCopyright(rs.getString("copyright"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) 
					conn.close();
			} catch (Exception e2) {		
				e2.getStackTrace();
			}
		}
		return ddto;		
	}
}
