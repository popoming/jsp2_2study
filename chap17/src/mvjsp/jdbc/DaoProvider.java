package mvjsp.jdbc;

public class DaoProvider {
	// 싱글톤 패턴을 적용해서 DaoProvider 객체 구함
	
	public static DaoProvider getInstance() {
		return instance;
	}
	
	// DBMS 타입별 DAO 객체
	
	  // private MySQLDao mysqlDao = new MySQLDao(); 
	 /* private OracleDao oracleDao = new
	 * OracleDao(); private MSSQLDao mssqlDao = new MSSQLDao();
	 */ 
		private String dbms; 
		// DBMS 타입설정 
		void setDbms(String dbms) { 
			this.dbms = dbms; 
		}
	 
	
	// 설정한 dbms 값에 따라 알맞은 DAO 객체 리턴
	/*
	 * public Dao getDao() { if("oracle".contentEquals(dbms)) { return oracleDao; }
	 * else if("mysql".contentEquals(dbms)) { return mysqlDao; } else
	 * if("mssql".contentEquals(dbms)) { return mssqlDao; }
	 * 
	 * return null; }
	 */
}
