<%--
  Created by IntelliJ IDEA.
  User: VM520U
  Date: 2020/9/15
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <title>Title</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<body>
<script type="text/javascript">
    //请求json响应json
    function sendjson()
    {
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/sendjson",
            contentType:"application/json;charset=utf-8",
            data:'{"name":"iphoneX","money":10}',
            success:function(data){
                alert(data);
            }
        });

    }

</script>
<input type="button" value="发送json11" onclick="sendjson()">
</body>

</html>
