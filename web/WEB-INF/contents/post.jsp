<%--
    Document   : postContent
    Created on : 20 déc. 2019, 12:21:43
    Author     : Herbert
--%>

<%-- L'affichage de la nouvelle --%>
<p class="title">
    ${requestScope.post.title}
    <span class="light">(Score : ${post.score} %)</span>
    <c:if test="${sessionScope.isAdmin}">
        <span class="id">Identifiant : ${requestScope.post.id}</span>
    </c:if>
</p>
<p class="content">
    ${requestScope.post.content}
</p>

<c:if test="${!empty sessionScope.sessionUser}">
    <%-- Les liens de vote --%>
    <c:choose>
        <c:when test="${requestScope.isVoteable}">
            <p>
                <a href="<c:url value="/postUp/${requestScope.post.id}"/>">
                    <img src="<c:url value="/inc/images/Thumb_up_icon.svg"/>" alt="thumb up">
                </a>
                <span>(${requestScope.post.up})</span>
                <a href="<c:url value="/postDown/${requestScope.post.id}"/>">
                    <img src="<c:url value="/inc/images/Thumb_down_icon.svg"/>" alt="thumb down">
                </a>
                <span>(${requestScope.post.down})</span>
            </p>
        </c:when>
        <c:otherwise><p class="light">Vous avez déjà voté pour ce post</p></c:otherwise>
    </c:choose>

    <%-- Ajout d'un commentaire --%>
    <form action="<c:url value="/submitComment/${requestScope.post.id}"/>" method="post">
        <fieldset>
            <legend>Laisser un commentaire</legend>
            <textarea name="content" cols="80" rows="7" placeholder="Entrez votre commentaire ici"></textarea>
            <span class="error">${form.errors['content']}</span>
            <button type="submit">Envoyer</button>
        </fieldset>
    </form>
</c:if>

<%-- Les commentaires --%>
<div class="comment">
    <c:forEach items="${requestScope.comments}" var="comment">
        <c:choose>
            <c:when test="${comment.author.active < 0}">
                <%-- Utilisateur supprimé --%>
                <article class="comment">
                    <p class="commentAuthor">De &lt;supprimé&gt;</p>
                    <p class="commentContent">
                        Cet utilisateur ayant été jugé indigne de participer à notre
                        communauté, ses commentaires ont été effacés
                    </p>
                </article>
            </c:when>
            <c:otherwise>
                <article class="comment">
                    <p class="commentAuthor">De ${comment.author.nick}</p>
                    <p class="commentContent">${comment.content}</p>
                    <c:choose>
                        <c:when test="${comment.flag==0}">
                            <p><a href="<c:url value="/flagComment/${requestScope.post.id}/${comment.id}"/>" class="button">Signaler</a></p>
                        </c:when>
                        <c:when test="${comment.flag == 1}">
                            <p class="light">Commentaire signalé</p>
                        </c:when>
                        <c:otherwise><p class="light">Commentaire validé</p></c:otherwise>
                    </c:choose>
                </article>
            </c:otherwise>
        </c:choose>
    </c:forEach>
</div>