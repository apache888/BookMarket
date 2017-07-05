<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@include file="/WEB-INF/jspf/left_menu.jspf" %>

<%@include file="/WEB-INF/jspf/letters.jspf" %>
<div class="book_list">
    <h5 style="text-align: left; margin-top:20px;">Найдено книг: ${bookList.size()} </h5>

    <c:if test="${!empty bookList}">
        <ul>
            <c:forEach items="${bookList}" var="book">
            <li>
                <a href="<c:url value='/books/${book.id}' />" target="_self">${book.name}</a>
            </li>
            </c:forEach>
        </ul>
    </c:if>
</div>
