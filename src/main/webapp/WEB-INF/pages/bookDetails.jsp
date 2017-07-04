<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Book details</title>
</head>
<body>
    <h1>Book details</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Genre(s)</th>
            <th>Author(s)</th>
            <th>Description</th>
            <th>Price</th>
        </tr>
        <tr>
            <td>${book.id}</td>
            <td>${book.name}</td>
            <td>
                <c:if test="${!empty genres}">
                    <c:forEach var="genre" items="${genres}">
                        <li>${genre.name}</li>
                    </c:forEach>
                </c:if>
            </td>
            <td>
                <c:if test="${!empty authors}">
                    <c:forEach var="author" items="${authors}">
                        <li>${author.fullName}</li>
                    </c:forEach>
                </c:if>
            </td>
            <td>${book.description}</td>
            <td>${book.price}</td>
        </tr>
    </table>
<br/>
<br/>
<h3>Oreder form</h3>
    <form:form action="/order.do" modelAttribute="order" method="post">
        <table border="1">
            <tr>
                <td>
                    <form:label path="id">
                        <%--<spring:message text="ID"/>--%>
                    </form:label>
                </td>
                <td>
                    <%--<form:input path="id" readonly="true" />--%>
                    <form:hidden path="id"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="firstName">
                        <spring:message text="First Name"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="firstName"/>
                </td>
                <td>
                    <form:errors path="firstName"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="lastName">
                        <spring:message text="Last Name"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="lastName"/>
                </td>
                <td>
                    <form:errors path="lastName"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="address">
                        <spring:message text="Address"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="address"/>
                </td>
                <td>
                    <form:errors path="address"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="quantity">
                        <spring:message text="Quantity"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="quantity"/>
                </td>
                <td>
                    <form:errors path="quantity"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="bookId">
                        <spring:message text="Book Id"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="bookId" value="${book.id}"/>
                </td>
                <td>
                    <form:errors path="bookId"/>
                </td>
            </tr>

        </table>
    </form:form>
</body>
</html>