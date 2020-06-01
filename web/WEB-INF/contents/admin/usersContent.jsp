<%--
    Document   : usersContent
    Created on : 20 avr. 2020, 22:01:51
    Author     : Herbert
--%>
<table>
    <caption>Liste des utilisateurs inscrits</caption>
    <tr>
        <th>id</th>
        <th>mail</th>
        <th>pseudo</th>
        <th>actif</th>
        <th>action</th>
    </tr>
    <c:forEach items="${requestScope.users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.mail}</td>
            <td>${user.nick}</td>
            <td>
                <c:choose>
                    <c:when test="${user.active == -2}">Supprimé</c:when>
                    <c:when test="${user.active == -1}">Désinscrit</c:when>
                    <c:when test="${user.active == 0}">Non</c:when>
                    <c:when test="${user.active == 1}">Oui</c:when>
                </c:choose>
            </td>
            <td>
                <c:if test="${user.active >= 0}">
                    <div><a class="red" href="<c:url value="/admin/userDelete/${user.id}"/>">Supprimer</a></div>
                    <div><a class="green" href="<c:url value="/admin/userActivate/${user.id}"/>">Activer</a></div>
                    <div><a class="orange" href="<c:url value="/admin/userDeactivate/${user.id}"/>">Désactiver</a></div>
                </c:if>
            </td>
        </tr>
    </c:forEach>
</table>