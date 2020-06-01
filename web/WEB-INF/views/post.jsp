<%--
    Document   : post
    Created on : 20 déc. 2019, 12:20:26
    Author     : Herbert
--%>

<jsp:include page="/WEB-INF/template/template.jsp">
    <jsp:param name="title" value="${requestScope.post.title}"/>
    <jsp:param name="content" value="post"/>
    <jsp:param name="cssFiles" value="post"/>
</jsp:include>