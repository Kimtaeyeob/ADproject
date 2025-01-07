package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.StepupMemberVO;

public class LoginDAO {
	
	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//아이디, 패스워드 확인
	public StepupMemberVO select_one(String stepup_id) {
		
		StepupMemberVO vo = sqlSession.selectOne("l.login_id",stepup_id);
		return vo;
	}
	
	public String select_one_pwd(String stepup_id) {
		
		String res = sqlSession.selectOne("l.login_pwd", stepup_id);
		
		return res;
	}
	
	public int insert(StepupMemberVO member) {
		
		int res = sqlSession.delete("l.member_update", member);
		
		return res;
	}
	
}
