<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Books</title>
</head>
<body>
    <h1>BOOKS</h1>
    <c:if test="${!empty bookList}">
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Title</th>
            </tr>
            <c:forEach items="${bookList}" var="book">
                <tr>
                    <td>${book.id}</td>
                    <td><a href="<c:url value='/books/${book.id}' />"
                           target="_self">${book.name}</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

</body>
</html>