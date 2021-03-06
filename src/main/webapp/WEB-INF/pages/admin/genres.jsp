<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>

<br/>
<a href="/admin/main">Back to main</a>
<br/>
<br/>
<div>
    <c:if test="${!empty genres}">
        <table>
            <c:forEach items="${genres}" var="genre">
                <tr>
                    <td>${genre.name}</td>
                    <td><a href="<c:url value='/admin/genres/edit/${genre.id}' />">&nbsp;Edit</a></td>
                    <td><a href="<c:url value='/admin/genres/delete/${genre.id}' />" target="_self">&nbsp;Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
<br/>
<br/>
<h3>Add / Edit</h3>
<form:form action="/admin/genres" method="post" modelAttribute="genre">
    <table>
        <c:if test="${!empty genre.name}">
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
            <td colspan="2">
                <c:if test="${!empty genre.name}">
                    <input type="submit"
                           value="<spring:message text="Edit"/>"/>
                </c:if>
                <c:if test="${empty genre.name}">
                    <input type="submit"
                           value="<spring:message text="Add"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>