<%@ page import="org.dielian.domain.Manager" %><%--
  Created by IntelliJ IDEA.
  User: LUJIANCAI
  Date: 2021/4/27
  Time: 14:34
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
    <title>保修结果</title>
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/ajax.js"></script>
    <link rel="stylesheet" href="<%=basePath%>css/show.css" type="text/css">
    <base href="<%=basePath%>" />
</head>
<body id="body">
<%--<p>#{list}</p>--%>
<p align="center">欢迎查看保修结果</p>
<table align="center" id="find" border="1" >

</table>
<br>
    <table align="center"> <tr><td>跳转到第几页：</td><td><input type="text" id="ye" value="1"></td></tr>
       <tr><td><input type="button" id="btn" value="查询"></td></tr>            </table>


<br>
<p align="center"><input type="button" id="btn1" value="上一页"> <input type="button" id="btn2" value="下一页"></p>
<p align="center"><img src="images/s03.jpg" alt="诗音"></p>
</body>
</html>
