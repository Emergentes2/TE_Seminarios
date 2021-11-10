<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Seminarios"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
   ArrayList<Seminarios> lista = (ArrayList<Seminarios>)request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Seminarios</h1>
<p><a href="MainController?op=nuevo">Nuevo</a></p>
<table border="1">
    <tr>
	<th>Id</th>
	<th>Titulo</th>
	<th>Expositor</th>
	<th>Fecha</th>
        <th>Horas</th>
        <th>Cupos</th>
    </tr>

    <c:forEach var="item" items="${lista}">
    <tr>
	<td>${item.id}</td>
	<td>${item.titulo}</td>
	<td>${item.expositor}</td>
	<td>${item.fecha}</td>
        <td>${item.horas}</td>
        <td>${item.cupos}</td>
        <td><a href="MainController?op=editar&id=${item.id}">Editar</a></td>
        <td><a href="MainControler?op=eliminar&id=${item.id}"
               onclick="return(confirm('Esta seguro ???'))">Eliminar</a></td>
    </tr>
    </c:forEach>

  </table>
    </body>
</html>
