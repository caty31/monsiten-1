<%--
    Document   : indexContent
    Created on : 20 déc. 2019, 12:46:42
    Author     : Herbert
--%>

<a href="<c:url value="/admin/showAllUsers"/>" class="button">Voir tous les inscrits</a>
<a href="<c:url value="/admin/cryptDB"/>" class="button">Chiffrer les mots de passe de la DB</a>

<%-- Tableau des utilisateurs en attente de validation d'inscription --%>
<table>
    <caption>Liste des inscriptions en attente de validation</caption>
    <tr>
        <th>id</th>
        <th>mail</th>
        <th>pseudo</th>
        <th>action</th>
    </tr>
    <c:forEach items="${inactives}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.mail}</td>
            <td>${user.nick}</td>
            <td>
                <div><a class="red" href="<c:url value="/admin/userDelete/${user.id}"/>">Supprimer</a></div>
                <div><a class="green" href="<c:url value="/admin/userActivate/${user.id}"/>">Activer</a></div>
            </td>
        </tr>
    </c:forEach>
</table>

<%-- Tableau des commentaires signalés --%>
<table>
    <caption>Liste des commentaires signalés</caption>
    <tr>
        <th>id</th>
        <th>Contenu</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${flaggedComments}" var="comment">
        <tr>
            <td>${comment.id}</td>
            <td>${comment.content}</td>
            <td>
                <div><a class="red" href="<c:url value="/admin/commentDelete/${comment.id}"/>">Supprimer</a></div>
                <div><a class="green" href="<c:url value="/admin/commentValidate/${comment.id}"/>">Valider</a></div>
            </td>
        </tr>
    </c:forEach>
</table>

<%-- Tableau des nouvelles signalées --%>
<table>
    <caption>Liste des nouvelles signalées</caption>
    <tr>
        <th>id</th>
        <th>Contenu</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${requestScope.flaggedPosts}" var="post">
        <tr>
            <td>${post.id}</td>
            <td>${post.content}</td>
            <td>
                <div><a class="red" href="<c:url value="/admin/postDelete/${post.id}"/>">Supprimer</a></div>
                <div><a class="green" href="<c:url value="/admin/postValidate/${post.id}"/>">Valider</a></div>
            </td>
        </tr>
    </c:forEach>
</table>
