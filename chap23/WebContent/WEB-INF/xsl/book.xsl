<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="list">
		<!-- TODO: Auto-generated template -->
		<html>
			<head><title>책 목록</title></head>
			<body>
			현재 등록되어 있는 책의 목록은 다음과 같습니다.
			<ul>
				<xsl:for-each select="book">
				<li><b><xsl:value-of select="title" /></b>
				(<xsl:value-of select="price" /> 원)
				<br/>
				<i><xsl:value-of select="author" /></i>
				</li>
				</xsl:for-each>
			</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>