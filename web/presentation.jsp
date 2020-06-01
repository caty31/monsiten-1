<%-- 
    Document   : presentation
    Created on : 12 mai 2020, 07:58:40
    Author     : stag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/accueil.css"/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/dist/css/bootstrap.min.css"/>"/>
        <title>presentation</title>
    </head>
    <body>
        <%@include file="/WEB-INF/template/header.jsp" %>
        <main>

            <h3> Qui sommes nous? :</h3> 
            <p>l'eglise zone d'espoir assure l’exercice public du culte évangélique pour faire connaître
                au monde contemporain les desseins d’amour de Dieu pour l’homme par la prédication de l’Evangile de Jésus-Christ
                et de pouvoir aux frais et besoins du culte.; cette association veut garder un esprit de service et d’ouverture
                sur la communauté au sein de laquelle elle vit;les présents statuts constituent une trame directive définissant 
                activités de notre association sans but lucratif</p>
            <div class="image"><img src="<c:url value="resources/foule.jpg"/>" alt="une foule" title="image-foule">

            </div>


            <h3>Notre vision</h3>

            <p>Un lieu d'accompagnement ou l'amour de Dieu transforme des hommes et des femmes en personnes speciales qui deviennent maitre
                de leur destins et cherissent par leur vie l'immensité du don d'amor que de Dieu qui nous a été fait</p>
            <div class="image"><img src="<c:url value="resources/bible2.jpg"/>" alt=" image d'une bible" title="image-bible"> </div>


            <p> <img src="<c:url value="resources/bible-3.jpg"/>" alt="image'une bible" title="image-bible"></p>

        </main>
        <%@include file="/WEB-INF/template/footer.jsp" %>
    </body>
</html>