package org.zerock.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wtime on 2017-02-13. ${time}
 * org.zerock.persistence / Web Ex02
 * Better late than never!
 * What : Ajax 댓글 처리를 위한 REST와 도메인 객체 설계 ReplyDAO 인터페이스 구현한 자바 클래스.
 * Why :
 * How :
 */
@Repository
public class ReplyDAOImpl implements ReplyDAO{

    @Inject
    private SqlSession session;

    private static String namespace = "org.zerock.mapper.ReplyMapper";

    @Override
    public List<ReplyVO> list(Integer bno) throws Exception {

        return session.selectList(namespace + ".list", bno);
    }

    @Override
    public void create(ReplyVO vo) throws Exception {

        session.insert(namespace + ".create", vo);
    }

    @Override
    public void update(ReplyVO vo) throws Exception {

        session.update(namespace + ".update", vo);
    }

    @Override
    public void delete(Integer rno) throws Exception {

        session.delete(namespace + ".delete", rno);
    }

    @Override
    public List<ReplyVO> listPage(Integer bno, Criteria cri) throws Exception {

        Map<String, Object> paramMap = new HashMap<>();

        paramMap.put("bno", bno);
        paramMap.put("cri", cri);

        return session.selectList(namespace + ".listPage", paramMap);
    }

    @Override
    public int count(Integer bno) throws Exception {

        return session.selectOne(namespace + ".count", bno);
    }

    @Override
    public int getBno(Integer rno) throws Exception {

        return session.selectOne(namespace + ".getBno", rno);
    }
}
