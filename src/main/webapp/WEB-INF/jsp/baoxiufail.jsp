<%--
  Created by IntelliJ IDEA.
  User: LUJIANCAI
  Date: 2021/9/25
  Time: 15:10
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
    <title>保修失败</title>
    <base href="<%=basePath%>" />
</head>
<body>
<h2 align="center">电话号码错误,请你重新尝试。</h2>
<p align="center"><a href="${pageContext.request.contextPath}/baoxiu.jsp">重新保修</a></p>
</body>
</html>
