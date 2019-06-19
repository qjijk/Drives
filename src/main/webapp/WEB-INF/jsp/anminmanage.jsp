<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/file.css" />
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <script src="js/filemanage.js" type="text/javascript"></script>
    <script type="text/javascript">
        function a1() {
            window.open("userlist.do")
        }
        function a2() {
            window.open("")
        }
        function a3() {
            window.open("")
        }
        function a4() {
            window.open("")
        }

    </script>
</head>
<body>
<table class="form-bg1">
    <thead >管理员界面</thead>
    <tr ><td><input width="20px" class="h2" type="button" value="管理用户信息" onclick="a1()"></td></tr>
    <tr ><td><input class="h2" type="button" value="管理文件" onclick="a2()"></td></tr>
    <tr ><td><input class="h2" type="button" value="统计文件信息"onclick="a3()"></td></tr>
    <tr ><td><input class="h2" type="button" value="维护云盘空间" onclick="a4()"></td></tr>

</table>
</body>
</html>
