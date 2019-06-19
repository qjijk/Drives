<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/file.css" />
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <script src="js/filemanage.js" type="text/javascript"></script>
</head>

<body>
<%
    List<File> ff = (List<File>)request.getSession().getAttribute("list");
    request.setAttribute("ff", ff);
%>
<c:forEach items="${requestScope.ff}" var="list" varStatus="id">

    <table class="form-bg2" border="5" width="70%">
        <tr class="form-horizontal">
            <td class="form-bg1">
    ${list.realname}
    <jsp:useBean id="dateValue" class="java.util.Date"/>
    <jsp:setProperty name="dateValue" property="time" value="${list.timename}"/>
    <fmt:formatDate value="${dateValue}" pattern="MM/dd/yyyy HH:mm"/>
            </td> <td class="form-bg2"  width="20px"><a  href="${pageContext.request.contextPath }/file/down?timename=${list.timename}">下载</a></td>
            </td> <td class="form-bg2" width="20px"><a  href="${pageContext.request.contextPath }/file/delete?timename=${list.timename}">删除</a></td>
            </td> <td  class="form-bg2" width="20px"><input type="button" value="重命名"></a>
        </td> <td  class="form-bg2" width="20px"><a href="share.do?timname=${list.timename}">分享</a>
        </td>
        </tr>

    </table>
</c:forEach>


</body>
</html>
