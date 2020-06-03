<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
    <body>
        <jsp:include page="menu.jsp">
            <jsp:param name="opcion" value="inicio" />
        </jsp:include>
        <div class="container">
            <h1>Anuncios clasificados</h1>
            <c:set var="c" value="0" />
            <c:forEach var="item" items="${avisos}">
                <c:if test="${(c % 3)==0}">
                    <div class="row my-4">
                </c:if>
                    <div class="col-sm-4" style="float:left">
                        <div class="card">
                            <h5 class="card-header">${item.titulo}</h5>
                            <div class="card-body">
                                <p class="card-text">${item.contenido}</p>
                                <a href="#" class="btn btn-primary">Leer más</a>
                            </div>
                        </div>  
                    </div>
                <c:if test="${(c % 3)==2}">
                    </div>
                </c:if>
                                <c:set var="c" value="${c+1}"/>
            </c:forEach>        
        </div>
        <script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>
