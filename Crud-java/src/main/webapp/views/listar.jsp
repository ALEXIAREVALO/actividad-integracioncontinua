<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Productos</title>
</head>
<body>
	<h1>Listar Productos</h1>
	
	<table border="1">
		<tr>
			<td>ID</td>
			<td>NOMBRE</td>
			<td>CANTIDAD</td>
			<td>PRECIO</td>
			<td>FECHA CREACION</td>
			<td>FECHA ACTUALIZACION</td>
			<td>ACCION</td>
		</tr>
		<c:forEach var="producto" items="${lista}">
		<tr>
			<td> <a href="productos?opcion=meditar&id=<c:out value="${producto.id}"></c:out>"><c:out value="${producto.id}"></c:out>  </a> </td>
			<td><c:out value="${producto.nombre}"></c:out> </td>
			<td><c:out value="${producto.cantidad}"></c:out> </td>
			<td><c:out value="${producto.precio}"></c:out> </td>
			<td><c:out value="${producto.fechaCrear}"></c:out> </td>
			<td><c:out value="${producto.fechaActualizar}"></c:out> </td>
			<td><a href="productos?opcion=eliminar&id=<c:out value="${producto.id}"></c:out>"> ELIMINAR  </a> </td>
		</tr>
		</c:forEach>
	</table>
	
</body>
</html>