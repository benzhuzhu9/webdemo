<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script type="text/javascript" src="/springMVC6/js/jquery-1.7.1.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#add").click(function(){
                var userName = $("#userName").attr("value");
                var password =$("#password").attr("value");

                var user = {userName:userName,password:password};

                $.ajax({
                    url:"/springMVC6/user/data/addUserJson",
                    type:"post",
                    data:user,
                    success:function(data){
                        alert("userName--->" + a.userName + "password--->" + a.password );

                    }
                });



            });
        });
    </script>
</head>
<body>
<h>json添加用户</h>
姓名：<input type="text" id="userName" name="userName">
年龄：<input type="text" id="age" name="age">
<input type="button" id="add" value="添加">

</body>
</html>