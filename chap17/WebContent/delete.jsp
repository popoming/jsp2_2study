<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="mvjsp.chap17.board.service.DeleteArticleService" %>
<jsp:useBean id="deleteRequest" class="mvjsp.chap17.board.service.DeleteRequest" />
<jsp:setProperty property="*" name="deleteRequest"/>
<%
	String viewPage = null;

	try {
		DeleteArticleService.getInstance().deleteArticle(deleteRequest);
		viewPage = "/delete_success.jsp";
	} catch (Exception ex) {
		request.setAttribute("deleteException", ex);
		viewPage = "/delete_error.jsp";
	}
%>
<jsp:forward page="<%= viewPage %>" />