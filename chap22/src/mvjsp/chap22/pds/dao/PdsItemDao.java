package mvjsp.chap22.pds.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import mvjsp.chap22.pds.model.PdsItem;

public class PdsItemDao {

	private static PdsItemDao instance = new PdsItemDao();
	
	public static PdsItemDao getInstance() {
		return instance;
	}
	
	private PdsItemDao() {}
	
	public int insert(Connection conn, PdsItem item) throws SQLException {
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement("insert into pds_item "
					+ "(filename, realpath, filesize, downloadcount, "
					+ "desciption) "
					+ "values (?, ?, ?, 0, ?)");
			pstmt.setString(1, item.getFileName());
			pstmt.setString(2, item.getRealPath());
			pstmt.setLong(3, item.getFileSize());
			pstmt.setString(4, item.getDescription());
			int insertCount = pstmt.executeUpdate();
			
			if(insertCount > 0) {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select last_insert_id() from pds_item");
				if(rs.next()) {
					return rs.getInt(1);
				}
			}
			
			return -1;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
			JdbcUtil.close(pstmt);
		}
	}
}
