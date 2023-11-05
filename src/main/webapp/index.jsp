<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>

<html>

<head>
    <title> 首页 </title>

    <style>
        a {
            text-decoration: none; /* 取消超链接下划线 */
            color: brown;
            font-size: 18px;
        }
        h3{
            width: 180px;
            height: 38px;
            margin: 100px auto;  /* 边框:上下100px, 左右自动缩变 */
            text-align: center;  /* 排版:居中 */
            line-height: 38px;   /* 文本行高:38px */
            background: deepskyblue;
            border-radius: 4px;  /* 元素边框圆角 */
        }
    </style>

</head>

<body>

<h3>
    <a href="${pageContext.request.contextPath}/book/allBook"> 点击进入列表详情 </a>
</h3>

</body>

</html>