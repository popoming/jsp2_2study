package mvjsp.chap22.pds.model;

public class PdsItem {
	private int id;
	private String fileName;
	private String realPath;
	private long fileSize;
	private int downloadCount;
	private String description;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @return the fileName
	 */
	public String getFileName() {
		return fileName;
	}
	/**
	 * @return the realPath
	 */
	public String getRealPath() {
		return realPath;
	}
	/**
	 * @return the fileSize
	 */
	public long getFileSize() {
		return fileSize;
	}
	/**
	 * @return the downloadCount
	 */
	public int getDownloadCount() {
		return downloadCount;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @param fileName the fileName to set
	 */
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	/**
	 * @param realPath the realPath to set
	 */
	public void setRealPath(String realPath) {
		this.realPath = realPath;
	}
	/**
	 * @param fileSize the fileSize to set
	 */
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	/**
	 * @param downloadCount the downloadCount to set
	 */
	public void setDownloadCount(int downloadCount) {
		this.downloadCount = downloadCount;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
