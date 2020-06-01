<%--
    Document   : registrationContent
    Created on : 19 déc. 2019, 16:39:18
    Author     : Herbert
--%>

<form method="post" action="<c:url value="/registration"/>">
    <fieldset>
        <legend>Inscription</legend>
        <p>Vous pouvez vous inscrire via ce formulaire.</p>
        <label for="mail">Adresse mail <span class="mandatory">*</span></label>
        <input type="mail" id="mail" name="mail" value="<c:out value="${user.mail}"/>" size="20" maxlength="60" />
        <span class="error">${form.errors.mail}</span>
        <br />
        <label for="password">Mot de passe <span class="mandatory">*</span></label>
        <input type="password" id="password" name="password" value="<c:out value="${user.password}"/>" size="20" maxlength="20" />
        <span class="error">${form.errors.password}</span>
        <br />
        <label for="confirm">Confirmation <span class="mandatory">*</span></label>
        <input type="password" id="confirm" name="confirm" value="" size="20" maxlength="20" />
        <span class="error">${form.errors.confirm}</span>
        <br />
        <label for="nick">Nom d'utilisateur</label>
        <input type="text" id="nick" name="nick" value="<c:out value="${user.nick}"/>" size="20" maxlength="20" />
        <span class="error">${form.errors.nick}</span>
        <br />
        <input type="submit" value="Inscription" class="noLabel" />
        <p>Les champs marqués d'un <span class="mandatory">*</span> sont obligatoires.</p>
    </fieldset>
</form>