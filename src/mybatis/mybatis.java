package mybatis;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import com.oracle.tna.dao.ItemMapper;
import com.oracle.tna.domain.Item;




public class mybatis {
	private static SqlSessionFactory sqlSessionFactory;
	
	static{
		try{
			String str = "mybatis/config.xml";
			InputStream is = Resources.getResourceAsStream(str);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
		} catch(Exception e){
			//TODO: handle exception
		}
	}//static
	
	public static SqlSession getSqlSession(boolean autocommit){
		return sqlSessionFactory.openSession(autocommit);
	}//getSqlSession
	
	
	public static void main(String[] args) {
		SqlSession sqlSession = mybatis.getSqlSession(true);
		ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
		
		List<Item> list = itemMapper.select();
		System.out.print(list);
	}//main
	
}
