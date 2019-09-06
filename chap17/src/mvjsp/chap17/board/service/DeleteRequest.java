package mvjsp.chap17.board.service;

public class DeleteRequest {
	private int articleId;
	private String password;
	/**
	 * @return the articleId
	 */
	public int getArticleId() {
		return articleId;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param articleId the articleId to set
	 */
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
