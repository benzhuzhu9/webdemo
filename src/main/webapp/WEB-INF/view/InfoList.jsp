<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <style>
        h2{text-align: center}
        form{text-align: right}
    </style>
    <script type="text/javascript">
        function modify1(){
            document.getElementsByTagName("abc").disabled=true;
        }
    </script>
</head>
<h2> Account Page(s)</h2>
<body>
welcome:${requestScope.username}
<table border="2" align="center">
    <caption>账户列表</caption>
    <tr>
        <th>序号</th>
        <th>姓名</th>
        <th>余额</th>
        <th>备注</th>
        <th>修改</th>
    </tr>
    <tr>
        <td>1</td>
        <td>${zhangsan}</td>
        <td>${zhangsan_account}</td>
        <%--<td aria-readonly="false"> <input type="text" id="1" disabled="false" ${zhangsan_remark}/> </td>--%>
        <td input type="text" id="abc">${zhangsan_remark}</td>
        <%--<td><input type="checkbox" onclick="modify1();"></td>--%>
        <td><input type="checkbox" id="cb" onclick="modify1()" /></td>
    </tr>
    <tr>
        <td>2</td>
        <td>${lisi}</td>
        <td>${lisi_account}</td>
        <td input readonly="true" id="2">${lisi_remark}</td>
        <td><input type="checkbox" onclick="modify"></td>
            <%--<c:forEach items="${carList}" var="user">--%>
                <%--${user.name} ${user.score}: ${user.remark}--%>
                <%--<br />--%>
            <%--</c:forEach>--%>
    </tr>
</table>

<form action="building" method="post" >
    <input type="submit" value="登录">
</form>
</body>
</html>