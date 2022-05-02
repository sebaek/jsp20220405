package app01.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import app01.dto.ReplyDto;

public class ReplyDao {
	
	public boolean insert(Connection con, ReplyDto reply) {
		String sql = "INSERT INTO Reply "
				+ "(board_id, content, inserted) "
				+ "VALUES (?, ?, ?) ";
		
		try (PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setInt(1, reply.getBoardId());
			pstmt.setString(2, reply.getContent());
			pstmt.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			
			int cnt = pstmt.executeUpdate();
			
			return cnt == 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
}




