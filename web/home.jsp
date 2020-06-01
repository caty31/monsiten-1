<%-- 
    Document   : home
    Created on : 19 mai 2020, 08:07:43
    Author     : stag
--%>

<%@page pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <title>Admin CPanel - Bookshop</title>
    </head>
    <body>
        <div style="text-align: center">
            <h1>Welcome to zone d'espoir evangelique Website Admin Panel</h1>
            <p>vous etes connecté en tant que </p>
            ${sessionUser.password}
            ${sessionUser.email}
            Welcome <%=request.getAttribute("users.email")%>


            <a href="/zonedespoirevangelique/UserLogoutServlet">Logout</a>
        </div>
    </body>
</html>



