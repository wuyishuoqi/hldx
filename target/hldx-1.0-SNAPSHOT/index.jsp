<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>红蓝电脑协会保修网站后台</title>
    <base href="<%=basePath%>" />
    <link rel="stylesheet" href="css/index.css" type="text/css">
</head>
<body>
<div class="content">
<h2 align="center">红蓝电协后台</h2>
    <br>
<h3 align="center" class="top">请输入你的姓名和密码登录：</h3>
    <br>
    <form action="${pageContext.request.contextPath}/login" method="post">
        <table align="center">
            <tr><td>姓名：</td><td><input type="text" name="name"></td></tr>
            <tr><td>密码：</td><td><input type="password" name="password"></td></tr>
            <tr><td><input type="reset" value="重置" class="rest"></td><td><input type="submit" value="提交" class="submit"></td></tr>
        </table>
    </form>
<%--<p align="center"><img src="images/s03.jpg" alt="诗音"></p>--%>
</div>
</body>
</html>
