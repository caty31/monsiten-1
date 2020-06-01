<%--
    Document   : index
    Created on : 23 avr. 2020, 15:10:22
    Author     : Herbert
--%>

<%@ page pageEncoding="UTF-8" %>
<a href="<c:url value="/index?action=previous&start=${requestScope.start}"/>" class="button ${previousDisabled?"disabled":""}">Voir les 10 précédents</a>
<a href="<c:url value="/index?action=next&start=${requestScope.start}"/>" class="button ${nextDisabled?"disabled":""}">Voir les 10 suivants</a>
<c:choose>
    <c:when test="${!empty requestScope.posts}">
        <c:forEach items="${requestScope.posts}" var="post">
            <div class="post">
                <p class="postTitle">
                    <c:out value="${post.title}"/>
                    <span class="postScore">(Score : <c:out value="${post.score}"/> %)</span>
                </p>
                <p class="postTeaser">
                    <c:out value="${post.teaser}" />
                </p>
                <p class="right">
                    <a href="post/${post.id}" class="button">En savoir plus</a>
                </p>
            </div>
        </c:forEach>
    </c:when>
    <c:otherwise><h2>Aucune nouvelle à afficher</h2></c:otherwise>
</c:choose>