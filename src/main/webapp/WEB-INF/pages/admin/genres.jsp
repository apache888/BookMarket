
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>

<c:if test="${!empty genres}">
    <ul>
        <c:forEach items="${genres}" var="genre">
            <li>
                <a href="<c:url value='/books/${genre.id}' />" target="_self">${genre.name}</a>
            </li>
        </c:forEach>
    </ul>
</c:if>
