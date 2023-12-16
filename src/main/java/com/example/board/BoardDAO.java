package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    SqlSession sqlSession;

    private final String BOARD_LIST = "select * from pp5BOARD order by seq desc";

    public List<BoardVO> getBoardList() {
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }

    public BoardVO getBoard(int id) {
        BoardVO one = sqlSession.selectOne("Board.getBoard", id);
        return one;
    }

    public int insertBoard(BoardVO vo) {
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }

    public int updateBoard(BoardVO vo) {
        int one = sqlSession.update("Board.updateBoard", vo);
        return one;
    }

    public int deleteBoard(int id) {
        int result = sqlSession.delete("Board.deleteBoard", id);
        return result;
    }

//    public List<BoardVO> getBoardList(){
//        String sql = "select * from BOARD order by seq desc";
//
//        List<BoardVO> list = jdbcTemplate.query(sql, new RowMapper<BoardVO>() {
//            @Override
//            public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
//                BoardVO one = new BoardVO();
//                one.setSeq(rs.getInt("seq"));
//                one.setTitle(rs.getString("title"));
//                one.setWriter(rs.getString("writer"));
//                one.setContent(rs.getString("content"));
//                one.setCategory(rs.getString("category"));
//                return one;
//            }
//        });
//
//        return list;
//    }
//
//    public int insertBoard(BoardVO vo) {
//        String sql = "insert into BOARD (title, writer, content, category) values ("
//        + "'" + vo.getTitle() + "',"
//        + "'" + vo.getWriter() + "',"
//        + "'" + vo.getContent() + "',"
//        + "'" + vo.getCategory() + "')";
//        return jdbcTemplate.update(sql);
//    }
//
//    public int deleterBoard (int seq) {
//        String sql = "delete from BOARD where seq = " + seq;
//        return jdbcTemplate.update(sql);
//    }
//
//    public int updateBoard(BoardVO vo) {
//        String sql = "update BOARD set title='" + vo.getTitle() +"'," + "writer='" + vo.getWriter() + "'," + "content='" +vo.getContent() + "'," + "category='" + vo.getCategory() + "' where seq=" + vo.getSeq();
//        return jdbcTemplate.update(sql);
//    }
//
//    public BoardVO getBoard(int seq) {
//        String sql = "select * from BOARD where seq=" + seq;
//        return jdbcTemplate.queryForObject(sql, new RowMapper<BoardVO>() {
//            @Override
//            public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
//                BoardVO one = new BoardVO();
//                one.setSeq(rs.getInt("seq"));
//                one.setTitle(rs.getString("title"));
//                one.setWriter(rs.getString("writer"));
//                one.setContent(rs.getString("content"));
//                one.setCategory(rs.getString(("category")));
//                return one;
//            }
//        });
//    }

}


