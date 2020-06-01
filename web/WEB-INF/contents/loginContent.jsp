<form method="post" action="<c:url value="/login"/>">
    <fieldset>
        <legend>Connexion</legend>
        <p>Vous pouvez vous connecter via ce formulaire.</p>
        <label for="mail">Adresse mail <span class="requis">*</span>
        </label>
        <input type="email" id="mail" name="mail" value="<c:out value="${user.mail}"/>" size="20" maxlength="60" />
        <span class="error">${form.errors['mail']}</span>
        <br /><label for="password">Mot de passe <span class="requis">*</span></label>
        <input type="password" id="password" name="password" value="" size="20" maxlength="20" />
        <span class="error">${form.errors['password']}</span>
        <br /><input type="submit" value="Connexion" class="noLabel" />
    </fieldset>
</form>