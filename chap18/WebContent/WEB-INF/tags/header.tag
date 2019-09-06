<%@ tag body-content="empty" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name="title" required="true" %>
<%@ attribute name="level" type="java.lang.Integer" %>
<%
	String headStringTag = null;
	String headEndTag = null;
	
	if(level == null) {
		headStringTag = "<h1>";
		headEndTag = "</h1>";
	} else if(level == 1) {
		headStringTag = "<h1>";
		headEndTag = "</h1>";
	} else if(level == 2) {
		headStringTag = "<h2>";
		headEndTag = "</h2>";
	} else if(level == 3) {
		headStringTag = "<h3>";
		headEndTag = "</h3>";
	}
%>
<%= headStringTag %>
${title}
<%= headEndTag %>
