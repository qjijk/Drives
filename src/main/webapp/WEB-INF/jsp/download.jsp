<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/6/11
  Time: 11:10
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
<form action="${pageContext.request.contextPath }/file/down.chao"
      method="get">
    <input type="submit" value="下载">
</form>

</body>
</html>
