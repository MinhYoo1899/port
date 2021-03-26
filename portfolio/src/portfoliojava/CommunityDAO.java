package portfoliojava;

import java.sql.*;
import java.util.ArrayList;

public class CommunityDAO {
	
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
	
	public void input(CommunityDTO cdto) {
		connect();
		
		String title = cdto.getTitle();
		String writer = cdto.getWriter();
		String context = cdto.getContext();
		Timestamp date = cdto.getWrite_date();
		String category =cdto.getCategory();
		
		try {
			stmt = conn.createStatement();
			PreparedStatement input = conn.prepareStatement("insert into portfolio.community (comtitle, comcontext, comcategory, write_day, writer_id) values ('"+ title +"', '"+ context +"', '"+ category +"', '"+ date +"', '"+ writer +"');"); //INSERT INTO `portfolio`.`community` (`numbering`, `title`, `context`, `category`, `write_day`, `writer_id`) VALUES ('3', '111', '111', '111', '111', '111');
			
			input.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {	
				if (conn != null) 
					conn.close();
			} catch (Exception e2) {
				e2.getStackTrace();
			}
		}
	}
	
	public ArrayList <CommunityDTO> selectboard () {
		
		ArrayList <CommunityDTO> boardlist = new ArrayList <CommunityDTO> (); 
		
		connect();		
		try {
			
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select*from portfolio.community order by numbering desc;"); //역순 정렬 order by 해당field desc 
//			ResultSet rs = stmt.executeQuery("select title, context, category, write_day, writer_id from portfolio.community;"); title context category -> comtitle, comcontext, comcategory
			
			while (rs.next()) {	
				CommunityDTO cdto = new CommunityDTO();
				
				//DTO 객체정보저장
				cdto.setNumbering(rs.getInt("numbering"));
				cdto.setWrite_day(rs.getString("write_day"));
				cdto.setCategory(rs.getString("comcategory"));
				cdto.setTitle(rs.getString("comtitle"));
				cdto.setWriter(rs.getString("writer_id"));
				
				boardlist.add(cdto);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) 
					conn.close();
			} catch (Exception e2) {		
				e2.getStackTrace();
			}
		}
		return boardlist;
	}
	
	public CommunityDTO contents (int numbering) {
		CommunityDTO cdto = new CommunityDTO();
		
		connect();
		try {
			
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select*from portfolio.community where numbering='"+numbering+"';");
			
			if (rs.next()) {
				cdto.setNumbering(rs.getInt("numbering"));
				cdto.setCategory(rs.getString("comcategory"));
				cdto.setContext(rs.getString("comcontext"));
				cdto.setWrite_day(rs.getString("write_day"));
				cdto.setWriter(rs.getString("writer_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cdto;
	}
	
	public CommunityDTO oneselect (int numbering) {
		CommunityDTO cdto = new CommunityDTO();
		
		connect();
		try {
			stmt =conn.createStatement();
			ResultSet rs = stmt.executeQuery("select*from portfolio.community where numbering = '"+numbering+"';");
			
			if (rs.next()) {
				
				cdto.setNumbering(rs.getInt("numbering"));
				cdto.setTitle(rs.getString("comtitle"));
				cdto.setContext(rs.getString("comcontext"));
				cdto.setCategory(rs.getString("comcategory"));
				cdto.setWriter(rs.getString("writer_id"));
				cdto.setWrite_day(rs.getString("write_day"));
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
		return cdto;
	}
	
	public void update(CommunityDTO cdto) {
		
		int numbering = cdto.getNumbering();
		String title = cdto.getTitle();
		String writer = cdto.getWriter();
		String context = cdto.getContext();
		String date = cdto.getWrite_day();
		String category = cdto.getCategory();
		
		connect();		
		try {
			stmt = conn.createStatement();
			PreparedStatement update = conn.prepareStatement("update `portfolio`.`community` set comtitle = '"+title+"', writer_id = '"+writer+"', comcontext = '"+context+"', comcategory = '"+category+"', write_day = '"+date+"' where numbering = '"+numbering+"';");
			
			update.executeUpdate();
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
	}
	
	public void delete (int numbering) {
		connect();
		try {
			stmt = conn.createStatement();
			PreparedStatement delete = conn.prepareStatement("delete from portfolio.community where numbering = '"+numbering+"';");
			
			delete.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  finally {
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.getStackTrace();
			}
		}
	}
}