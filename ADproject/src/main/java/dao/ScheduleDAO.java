package dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import vo.ScheduleVO;

public class ScheduleDAO {

	SqlSession sqlSession;

    // 생성자
    public ScheduleDAO(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    // 모든 스케줄 조회
    public List<ScheduleVO> getAllSchedules() {
        // MyBatis 쿼리 호출
        List<ScheduleVO> schedules = sqlSession.selectList("s.getAllSchedules");
            
      //  System.out.println("조회된 스케줄 수: " + schedules.size());
        return schedules;
    }


}