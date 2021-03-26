package mvc;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mvcMybatis.*;

public class DigitalSelect {
	
	SqlSessionFactory factory = ConnectMybatis.getSqlSession();   
	
	static DigitalSelect model = new DigitalSelect(); 
	
	public static DigitalSelect instance() {
		return model;
	}
	
	public List<DigitalDTO> selectproduct() {
		
		SqlSession sqlsession = factory.openSession();
		List<DigitalDTO> list = sqlsession.selectList("selectdb"); 
		sqlsession.close();
		
		return list;   
	}
	
	public DigitalDTO oneselect(String serial_number) {
//		System.out.println(title + "select");
//		request.setAttribute("title", title);
		
		SqlSession sqlsession = factory.openSession();
		DigitalDTO ddto = sqlsession.selectOne("selectone", serial_number);
		sqlsession.close();
		
		return ddto;
	}
}
