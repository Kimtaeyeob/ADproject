package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.AcademyVO;

public class AcademyDAO {

	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//메인 첫 페이지 조회
	public List<AcademyVO> selectList(){
		
		List<AcademyVO> list = sqlSession.selectList("a.academy_list");
		return list;
	}
	
}
