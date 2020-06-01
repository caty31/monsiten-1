<%--
    Document   : header
    Created on : 19 déc. 2019, 15:39:48
    Author     : Herbert
--%>
<header>
    <nav>
        <a href="<c:url value="/index"/>" />Accueil</a>
        <c:if test="${sessionScope.isAdmin}">
            <a href="<c:url value="/admin"/>" />Administration</a>
        </c:if>

        <%-- Vérification de la présence d'un objet utilisateur en session --%>
        <c:choose>
            <c:when test="${empty sessionScope.sessionUser}">
                <a href="<c:url value="/registration"/>" />Inscription</a>
                <a href="<c:url value="/login"/>"/>Connexion</a>
            </c:when>
            <c:otherwise><a href="<c:url value="/logout"/>"/>Déconnexion</a></c:otherwise>
        </c:choose>
    </nav>
    <c:if test="${!empty requestScope.msg}">
        <div class="adminMsg">${requestScope.msg}</div>
    </c:if>
</header>