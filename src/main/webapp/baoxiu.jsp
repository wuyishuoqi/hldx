<%--
  Created by IntelliJ IDEA.
  User: LUJIANCAI
  Date: 2021/4/27
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>红蓝电脑协会保修网站</title>
    <base href="<%=basePath%>" />
    <link rel="stylesheet" href="css/baoxiu.css" type="text/css">
</head>
<body>
<h2 align="center" class="row">红蓝电脑协会</h2>
<div class="box">

    <form method="post" action="add">
        <table>
            <tr><td>姓名：</td><td><input type="text" name="name" required="required"></td></tr>
            <tr>
                <td>电话：</td>
                <td><input type="text" name="cellphone" required="required"></td>
            </tr>
            <tr>
                <td>微信:</td>
                <td><input type="text" name="wechat"></td>
            </tr>
            <tr>
                <td>地址:</td>
                <td><input type="text" name="address" required="required" placeholder="XX区XX栋XXX号"></td>
            </tr>
            <tr>
                <td>问题:</td>
                <td><input type="text" name="problem" placeholder="电脑出现的问题"></td>
            </tr>
            <tr>
                <td>空闲时间:</td>
                <td><input type="text" name="time"></td>
            </tr>
            <tr>
                <td>今天日期:</td>
                <td><input type="text" name="date"></td>
            </tr>
            <tr><td><input type="submit" class="but"></td></tr>
        </table>
    </form>
    <a href="${pageContext.request.contextPath}" class="bom">后台登录</a>
</div>
</body>
</html>
