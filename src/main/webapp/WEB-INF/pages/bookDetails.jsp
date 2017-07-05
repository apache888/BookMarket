<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<%@include file="/WEB-INF/jspf/left_menu.jspf" %>

<%@include file="/WEB-INF/jspf/letters.jspf" %>
<%--<h1>Book details</h1>--%>
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
<h3>Order form</h3>
<form:form action="/order.do" method="post" modelAttribute="order">
    <table>
        <thead>
        <tr>
            <td>
                <form:label path="firstName">
                    <spring:message text="First Name"/>
                </form:label>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="lastName">
                    <spring:message text="Last Name"/>
                </form:label>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="address">
                    <spring:message text="Address"/>
                </form:label>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="quantity">
                    <spring:message text="Quantity"/>
                </form:label>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookId">
                    <spring:message text="Book Id"/>
                </form:label>
            </td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                <form:input path="firstName"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:input path="lastName"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:input path="address"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:input path="quantity"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:input path="bookId" value="${book.id}"/>
            </td>
        </tr>
        </tbody>
    </table>
    <input type="submit" value="<spring:message text="Save order"/>
</form:form>


<%--<table border="1">--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="id">--%>
<%--&lt;%&ndash;<spring:message text="ID"/>&ndash;%&gt;--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--&lt;%&ndash;<form:input path="id" readonly="true" />&ndash;%&gt;--%>
<%--<form:hidden path="id"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="firstName">--%>
<%--<spring:message text="First Name"/>--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:input path="firstName"/>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:errors path="firstName"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="lastName">--%>
<%--<spring:message text="Last Name"/>--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:input path="lastName"/>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:errors path="lastName"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="address">--%>
<%--<spring:message text="Address"/>--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:input path="address"/>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:errors path="address"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="quantity">--%>
<%--<spring:message text="Quantity"/>--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:input path="quantity"/>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:errors path="quantity"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="bookId">--%>
<%--<spring:message text="Book Id"/>--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:input path="bookId" value="${book.id}"/>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:errors path="bookId"/>--%>
<%--</td>--%>
<%--</tr>--%>

<%--</table>--%>
<%--<input type="submit" value="<spring:message text="Save order"/>--%>
<%--</form:form>--%>
