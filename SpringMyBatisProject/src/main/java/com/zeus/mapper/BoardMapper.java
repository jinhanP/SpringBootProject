package com.zeus.mapper;

import java.util.List;

import com.zeus.domain.Board;

//BoardMapper.xml 맵핑 시켜준다. Board board 안에 변수들을 #으로 해준다.
public interface BoardMapper {

	public void create(Board board) throws Exception;

	public Board read(Integer boardNo) throws Exception;

	public void update(Board board) throws Exception;

	public void delete(Integer boardNo) throws Exception;

	public List<Board> list() throws Exception;
}
