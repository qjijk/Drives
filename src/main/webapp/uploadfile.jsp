<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/6/10
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传文件</title>
</head>
<body>
<form action="upload.java" method="post" enctype="multipart/form-data">
    <input name="name">
    <input type="file" name="f1">
    <input type="submit" value="上传">
</form>
</body>
</html>
