<%--
  Created by IntelliJ IDEA.
  User: LUJIANCAI
  Date: 2021/4/27
  Time: 1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="loginBean" class="org.dielian.domain.Manager" scope="session"/>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>loginsuccess</title>
    <base href="<%=basePath%>" />
    <link rel="stylesheet" href="<%=basePath%>css/loginsuccess.css" type="text/css">
</head>
<body>
<h2 align="center" class="tips">恭喜你登录成功</h2>
<br>
<div class="left">
<h4 align="center">请输入你的账号和密码注册:</h4>
<form action="logined/addmanager" method="post">
    <table align="center">
        <tr><td>账号：</td><td><input type="text" name="name"></td></tr>
        <tr><td>密码：</td><td><input type="password" name="password"></td></tr>
        <tr><td><input type="text" name="loginname" value="${loginname}" hidden></td></tr>
        <tr><td>身份：</td><td><select name="quanxian" id="shenfen">
            <option value="1">超级管理员</option>
            <option value="2" selected="selected">管理员</option>
        </select></td></tr>
        <tr><td><input type="submit" value="提交"></td></tr>
    </table>
</form>
</div>
<div class="right">
    <h4 align="center">请输入你的账号更改密码:</h4>
    <form action="logined/updatemanager" method="post">
        <table align="center">
            <tr><td>账号：</td><td><input type="text" name="name"></td></tr>
            <tr><td>原密码：</td><td><input type="password" name="password"></td></tr>
            <tr><td>新密码：</td><td><input type="password" name="newpassword"></td></tr>
            <tr><td><input type="submit" value="提交"></td></tr>
        </table>
    </form>
</div>
<% String loginname= (String) request.getAttribute("loginname"); %>
<%session.setAttribute("loginBean",loginBean); %>
<p align="center" class="select"><a href="logined/query">查询保修</a></p>
<%--<p align="center"><a href="ajax">查询保修ajax</a></p>--%>
</body>
</html>
