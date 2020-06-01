<%--
    Document   : template.jsp
    Created on : 19 déc. 2019, 16:22:17
    Author     : Herbert
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${param.title}</title>
        <link rel="stylesheet" type="text/css" href="<c:url value="/inc/css/style.css"/>" />
        <c:if test="${param.cssFiles!=null}">
            <c:forTokens items="${param.cssFiles}" delims="|" var="cssFile">
                <link rel="stylesheet" type="text/css" href="<c:url value="/inc/css/${cssFile}.css"/>" />
            </c:forTokens>
        </c:if>
    </head>
    <body>
        <jsp:include page="/WEB-INF/template/headerAdmin.jsp" />
        <main>
            <jsp:include page="/WEB-INF/contents/admin/${param.content}.jsp" />
        </main>
        <jsp:include page="/WEB-INF/template/footer.jsp" />
    </body>
</html>