<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/6/11
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/file/upload.chao"
      method="post" enctype="multipart/form-data">
    选择文件:<input type="file" name="file" width="120px"> <input
        type="submit" value="上传">
</form>

</body>
</html>
