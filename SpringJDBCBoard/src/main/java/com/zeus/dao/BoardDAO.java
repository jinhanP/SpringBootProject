package com.zeus.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.zeus.domain.Board;

//저장 장소
@Repository
public class BoardDAO {

	// Autowired 스프링 컨테이너 역전 주입
	// JdbcTemplate는 pom.xml에 만들어져있다.
	@Autowired
	private JdbcTemplate jdbcTemplate;

	// 생성
	public void create(Board board) throws Exception {
		String query = "INSERT INTO jdbcBoard(board_no, title, content, writer)"
				+ "VALUES(jdbcBoard_seq.NEXTVAL, ?, ?, ?)";
		jdbcTemplate.update(query, board.getTitle(), board.getContent(), board.getWriter());
	}

	// 읽기 select
	public Board read(Integer boardNo) throws Exception {
		String queryString = "SELECT board_no, title, content, writer, reg_date FROM jdbcBoard WHERE board_no = ?";
		List<Board> results = jdbcTemplate.query(queryString,

				new RowMapper<Board>() {
					@Override
					public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
						Board board = new Board();
						board.setBoardNo(rs.getInt("board_no"));
						board.setTitle(rs.getString("title"));
						board.setContent(rs.getString("content"));
						board.setWriter(rs.getString("writer"));
						board.setRegDate(rs.getDate("reg_date"));

						return board;
					}
				}, boardNo);
		// isEmpty 두개면 null 아니면 하나주고
		return results.isEmpty() ? null : results.get(0);
	}

	// 수정
	public void update(Board board) throws Exception {
		String query = "UPDATE jdbcBoard SET title =?, content =? WHERE board_no= ? ";

		jdbcTemplate.update(query, board.getTitle(), board.getContent(), board.getBoardNo());
	}

	// 삭제
	public void delete(Integer boardNo) throws Exception {
		String query = "delete from jdbcBoard where board_no = ?";
		jdbcTemplate.update(query, boardNo);
	}

	// 리스트
	public List<Board> list() throws Exception {
		List<Board> results = jdbcTemplate.query(
				"SELECT board_no, title, content, writer, reg_date FROM jdbcBoard WHERE board_no > 0 ORDER BY board_no desc, reg_date DESC",
				new RowMapper<Board>() {
					@Override
					public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
						Board board = new Board();

						board.setBoardNo(rs.getInt("board_no"));
						board.setTitle(rs.getString("title"));
						board.setContent(rs.getString("content"));
						board.setWriter(rs.getString("writer"));
						board.setRegDate(rs.getDate("reg_date"));

						return board;
					}
				});
		return results;
	}

}