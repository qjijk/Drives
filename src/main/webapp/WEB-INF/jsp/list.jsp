<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="com.msi.springemp.pojo.File" %><%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019/6/13
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<File> ff = (List<File>)request.getSession().getAttribute("list");
    request.setAttribute("ff", ff);
%>
<c:forEach items="${requestScope.ff}" var="list" varStatus="id">
    ${list.realname}<br>
</c:forEach>


</body>
</html>
