<%-- 
    Document   : contact
    Created on : 12 mai 2020, 10:44:14
    Author     : stag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <head>
        <meta charset="UTF-8">
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/accueil.css"/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/dist/css/bootstrap.min.css"/>"/>

        <title>contact</title>
    </head>

    <body>

        <%@include file="/WEB-INF/template/header.jsp" %>
        <div class="container">
            <div class="row1" > 
                <div class="col-xs-7">

                    <p id="contact">
                    <h2> Rencontrez nous </h2>

                    L'eglise zone d'espoir est situé au coeur de la ville de toulouse. Lorem ipsum dolor sit amet
                    consectetur, adipisicing elit. Maiores similique commodi reiciendis ab ad facilis deleniti,
                    perspiciatis obcaecati nulla maxime autem tenetur ea fugiat alias, architecto quasi ullam debitis
                    iste? Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora asper
                    liquid sunt nemo perspiciatis, aspernatur qui consequuntur eveniet laudantium quas excepturi impedit
                    expedita ullam ipsa maxime?
                    <br>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime, qui delectus id assumenda voluptatem
                    reprehenderit,alias quaerat debitis voluptates quo corporis accusantium eveniet impedit modi provident
                    tenetur eligendi minima sint.
                    </p>
                </div>
                <div class="col-xs-5">


                    <iframe id="carte"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2888.824425367277!2d1.4502562154963572!3d43.61019717912276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12aebca2b84b06df%3A0xcd979f35e2ebdc81!2sZone%20D&#39;Espoir%20Evangelique!5e0!3m2!1sfr!2sfr!4v1589401352468!5m2!1sfr!2sfr"
                            width="200" height="200" frameborder="0" style="border:0;" aria-hidden="false" tabindex="0">

                    </iframe>
                </div>
            </div>

            <div class="row2">
                <div class="col-xs-7">
                    L'eglise zone d'espoir est situé au coeur de la ville de toulouse. Lorem ipsum dolor sit amet
                    consectetur, adipisicing elit. Maiores similique commodi reiciendis ab ad facilis deleniti,
                    perspiciatis obcaecati nulla maxime autem tenetur ea fugiat alias, architecto quasi ullam debitis
                    iste? Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora asper
                    liquid sunt nemo perspiciatis, aspernatur qui consequuntur eveniet laudantium quas excepturi impedit
                    expedita ullam ipsa maxime?
                    <br>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime, qui delectus id assumenda voluptatem
                    reprehenderit,alias quaerat debitis voluptates quo corporis accusantium eveniet impedit modi provident
                    tenetur eligendi minima sint.
                    </p>

                </div>

            </div>


        </div>

        <%@include file="/WEB-INF/template/footer.jsp" %>

    </body>

</html>