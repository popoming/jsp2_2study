package mvjsp.chap22.pds.service;

import mvjsp.chap22.pds.model.PdsItem;

public class AddRequest {
	private String fileName;
	private long fileSize;
	private String realPath;
	private String description;
	/**
	 * @return the fileName
	 */
	public String getFileName() {
		return fileName;
	}
	/**
	 * @return the fileSize
	 */
	public long getFileSize() {
		return fileSize;
	}
	/**
	 * @return the realPath
	 */
	public String getRealPath() {
		return realPath;
	}
	/**
	 * @return the desciption
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param fileName the fileName to set
	 */
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	/**
	 * @param fileSize the fileSize to set
	 */
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	/**
	 * @param realPath the realPath to set
	 */
	public void setRealPath(String realPath) {
		this.realPath = realPath;
	}
	/**
	 * @param desciption the desciption to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	
	public PdsItem toPdsItem() {
		PdsItem item = new PdsItem();
		item.setFileName(fileName);
		item.setFileSize(fileSize);
		item.setRealPath(realPath);
		item.setDescription(description);
		return item;
	}
}
