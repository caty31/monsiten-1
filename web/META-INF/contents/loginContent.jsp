<%-- 
    Document   : loginContent
    Created on : 17 mai 2020, 18:28:05
    Author     : stag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>
        <form method="post" action="<c:url value="/login"/>">
            <fieldset>
                <legend>Connexion</legend>
                <p>Vous pouvez vous connecter via ce formulaire.</p>
                <label for="mail">Adresse mail <span class="requis">*</span></label>
                <input type="mail" id="mail" name="mail" value="<c:out value="${user.mail}"/>" size="20" maxlength="60" />
                <span class="error">${form.errors['mail']}</span>
                <br /><label for="password">Mot de passe <span class="requis">*</span></label>
                <input type="password" id="password" name="password" value="" size="20" maxlength="20" />
                <span class="error">${form.errors['password']}</span>
                <br /><input type="submit" value="Connexion" class="noLabel" />
            </fieldset>
        </form>
    </body>
</html>
