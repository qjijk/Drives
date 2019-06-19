<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page import="com.msi.springemp.pojo.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019/6/19
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<User> ff = (List<User>)request.getSession().getAttribute("userlist");
    request.setAttribute("ff", ff);
%>

<c:forEach items="${requestScope.ff}" var="userlist" varStatus="id">

    <table class="form-bg2" border="5" width="70%">
        <tr class="form-horizontal">
            <td class="form-bg1">
                    ${userlist.username}</td>
            <td><a>删除</a></td>
        </tr>

    </table>
</c:forEach>

</body>
</html>
