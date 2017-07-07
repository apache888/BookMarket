<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Онлайн магазин::Вход</title>
        <link href="${pageContext.request.contextPath}/resources/css/style_index.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <div class="main">

            <div class="content">
                <p class="title"><span class="text"><img src="/resources/images/lib.png" width="76" height="77" hspace="10" vspace="10" align="middle"></span></p>
                <p class="title">Онлайн магазин книг</p>
                <p class="text">Добро пожаловать в онлайн магазин, где вы сможете найти любую книгу на ваш вкус.</p>
                <p class="text">Доступны функции поиска, просмотра, сортировки и многие другие.</p>
                <p>&nbsp;</p>

            </div>

            <div class="login_div">
                <p class="title">Для входа введит свои данные:</p>
                <form class="login_form" name="username" action="/main" method="POST">
                    Имя: <input type="text" name="username" size="20" />
                    <input type="submit" value="Войти" />
                </form>

            </div>
        </div>


    <h3><a href="/admin/main">Admin page</a></h3>
    </body>
</html>
