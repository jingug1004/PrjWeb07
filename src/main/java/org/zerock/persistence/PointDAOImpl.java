package org.zerock.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by macbookpro on 2017. 2. 19. PM 2:17
 * sp4chap11-Project / org.zerock.persistence
 * No pain, No gain!
 * What : AOP와 트랜잭션 처리를 위한 준비(테스트).
 * Why :
 * How :
 */


@Repository
public class PointDAOImpl implements PointDAO {

    @Inject
    private SqlSession session;

    private static String namespace = "org.zerock.mapper.PointMapper";

    @Override
    public void updatePoint(String uid, int point) throws Exception {

        Map<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("uid", uid);
        paramMap.put("point", point);

        session.update(namespace + ".updatePoint", paramMap);

    }
}
