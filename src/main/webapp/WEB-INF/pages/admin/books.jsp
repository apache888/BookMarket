<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>

<%@include file="/WEB-INF/jspf/admin_left_menu.jspf" %>

<%@include file="/WEB-INF/jspf/admin_letters.jspf" %>

<br/>
<a href="/admin/main">Back to main</a>
<br/>
<br/>
<div class="book_list">
    <h5 style="text-align: left; margin-top:20px;">Найдено книг: ${bookList.size()} </h5>

    <c:if test="${!empty bookList}">
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Title</th>
                <%--<th>Genre(s)</th>--%>
                <%--<th>Author(s)</th>--%>
                <th>Description</th>
                <th>Price</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach items="${bookList}" var="book">
                <td>${book.id}</td>
                <td>${book.name}</td>
                <%--<td>--%>
                    <%--<c:if test="${!empty genres}">--%>
                        <%--<c:forEach var="genre" items="${genres}">--%>
                            <%--<li>${genre.name}</li>--%>
                        <%--</c:forEach>--%>
                    <%--</c:if>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<c:if test="${!empty authors}">--%>
                        <%--<c:forEach var="genre" items="${authors}">--%>
                            <%--<li>${genre.fullName}</li>--%>
                        <%--</c:forEach>--%>
                    <%--</c:if>--%>
                <%--</td>--%>
                <td>${book.description}</td>
                <td>${book.price}</td>
                <td><a href="<c:url value='/books/edit/${book.id}' />">&nbsp;Edit</a></td>
                <td><a href="<c:url value='/books/delete/${book.id}' />" target="_self">&nbsp;Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
<br/>
<br/>
<br/>
<div>
<h3>Add / Edit</h3>
<form:form action="/books" method="post" modelAttribute="book">
    <table>
        <c:if test="${!empty book.name}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="name">
                    <spring:message text="Name"/>
                </form:label>
            </td>
            <td>
                <form:input path="name"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="description">
                    <spring:message text="Description"/>
                </form:label>
            </td>
            <td>
                <form:input path="description"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="price">
                    <spring:message text="Price"/>
                </form:label>
            </td>
            <td>
                <form:input path="price"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty book.name}">
                    <input type="submit"
                           value="<spring:message text="Edit"/>"/>
                </c:if>
                <c:if test="${empty book.name}">
                    <input type="submit"
                           value="<spring:message text="Add"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
</div>
