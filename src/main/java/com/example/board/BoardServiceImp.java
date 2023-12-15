package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImp implements BoardService{

    @Autowired
    BoardDAO boardDAO;

    @Override
    public int insertBoard(BoardVO vo) {
        return 0;
    }

    @Override
    public int deleteBoard(int seq) {
        return 0;
    }

    @Override
    public int updateBoard(BoardVO vo) {
        return 0;
    }

    @Override
    public BoardVO getBoard(int seq) {
        return null;
    }

    @Override
    public List<BoardVO> getBoardList() {
        return boardDAO.getBoardList();
    }

}
