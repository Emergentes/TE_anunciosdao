<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
    <body>
        <jsp:include page="menu.jsp">
            <jsp:param name="opcion" value="avisos" />
        </jsp:include>        
        <div class="container">
            <h1><c:if test="${aviso.id == 0}">Nuevo</c:if>
                <c:if test="${aviso.id != 0}">Editar</c:if> aviso
                </h1>
                <form action="AvisoController" method="post">
                    <input type="hidden" name="id" value="${aviso.id}" />
                <div class="form-group">
                    <label>Titulo:</label>
                    <input type="text" name="titulo" value="${aviso.titulo}" class="form-control" >
                </div>
                <div class="form-group">
                    <label>Contenido</label>
                    <textarea name="contenido" class="form-control">${aviso.contenido}</textarea>
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>
        </div>
        <script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>
