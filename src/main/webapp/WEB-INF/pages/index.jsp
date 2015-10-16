<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: vas
  Date: 15.10.2015
  Time: 23:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book Manager</title>
</head>
<body>
<div>
  <h1>Book Manager</h1>
  <c:if test="${!empty books}">
    <table>
      <tr>
        <th>Name</th>
        <th>Genre</th>
        <th></th>
      </tr>
      <c:forEach items="${books}" var="book">
        <tr>
          <td>${book.name}</td>
          <td>${book.genre}</td>
          <td><a href="deleteBook/${book.id}">Delete</a> </td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
</div>
<a href="addBook">Add book</a>
</body>
</html>
