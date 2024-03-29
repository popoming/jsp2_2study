package mvjsp.chap13.dao.mysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import mvjsp.chap13.dao.MessageDao;
import mvjsp.chap13.model.Message;
import mvjsp.jdbc.JdbcUtil;

public class MySQLMessageDao extends MessageDao{
	
	@Override
	public int insert(Connection conn, Message message) throws SQLException {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(
					"insert into guestbook_message " +
					"(guest_name, password, message) values (?, ?, ?)");
			pstmt.setString(1, message.getGuestName());
			pstmt.setString(2, message.getPassword());
			pstmt.setString(3, message.getMessage());
			return pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
	}
	
	@Override
	public List<Message> selectList(Connection conn, int firstRow, int endRow) throws SQLException {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(
					"select * from guestbook_message " +
					"order by message_id desc limit ?, ?");
			pstmt.setInt(1, firstRow - 1);
			pstmt.setInt(2, endRow - firstRow + 1);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				List<Message> messageList = new ArrayList<Message>();
				do {
					messageList.add(super.makeMessageFromResultSet(rs));
				} while(rs.next());
				return messageList;
			} else {
				return Collections.emptyList();
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
}
