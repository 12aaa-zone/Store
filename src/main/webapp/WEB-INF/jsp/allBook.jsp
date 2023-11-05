<%--
   Created by IntelliJ IDEA.
   User: 12aaa
   Date: 2023/10/31
   Time: 16:21
   To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> 书籍列表 </title>
    <!--
        name="viewport" 是一个告诉浏览器要设置哪种视口（视区）属性的名称。
        width=device-width：这部分告诉浏览器，视口的宽度应该等于设备的宽度，这是响应式设计的一部分，确保网页适应不同设备的宽度。
        initial-scale=1.0：这部分设置初始缩放级别，值为1.0表示不进行缩放，即以正常大小显示网页。这有助于确保页面在移动设备上以适当的大小呈现。-->
    <meta name="viewport" content="width=device-width" initial-scale=1.0>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>

    <!-- Bootstrap的容器元素，用于包裹整个网页内容。它帮助确保内容在不同屏幕宽度下适当排列和对齐。-->
    <div class="container">

        <!--Bootstrap的行（row）元素，用于创建网页中的行布局。用于清除浮动的，以防止布局问题。  -->
        <div class="row clearfix">

            <!-- Bootstrap的列（column）元素，用于创建网页中的列布局。
                col-md-12 类定义了这个列在中等屏幕（md）上占用12列，即它将占据整行的宽度。 -->
            <div class="col-md-12 column">

                <!--这是Bootstrap的页面标题元素，用于创建页面标题-->
                <div class="page-header">

                    <h1>
                        <small>
                            书籍列表 --- 显示所有书籍
                        </small>
                    </h1>

                </div>
            </div>
        </div>
    </div>

    <div class="row">

        <!--这是Bootstrap的列（column）元素，用于创建网页中的列布局。
        col-md-4 类定义了这个列在中等屏幕（md）上占据4列的宽度，即占据整行的1/3的宽度。-->
        <div class="col-md-4 column">

            <!--锚元素 <a>，用于创建一个按钮。-->
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook"> 新增 </a>
        </div>
    </div>

    <div class="row clearfix">

        <!-- col-md-12 类定义了这个列在中等屏幕（md）上占据12列，即它将占据整行的宽度。 -->
        <div class="col-md-12 column">

            <!-- table 类是Bootstrap的表格样式。
                table-hover 和 table-striped 是Bootstrap的样式类，
                用于在鼠标悬停时高亮行，并隔行显示不同的背景色，增强表格的可读性。 -->
            <table class="table table-hover table-striped">

                <!--表格的头部部分，包含表格的列标题。-->
                <thead>

                <!--这是表格中的一行，包含列标题。-->
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名字</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>

                <!--这是表格的主体部分，用于显示实际的书籍数据。-->
                <tbody>

                <!--JSTL的 "c:forEach" 标签，用于遍历请求返回里名为 "list" 的属性-->
                <c:forEach var="book" items="${requestScope.get('list')}">
                    <tr>
                        <td>${book.getBookID()}</td>
                        <td>${book.getBookName()}</td>
                        <td>${book.getBookCounts()}</td>
                        <td>${book.getDetail()}</td>

                        <!--包含了超链接（<a> 元素）：-->
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.getBookID()}">更改</a> |
                            <a href="${pageContext.request.contextPath}/book/del/${book.getBookID()}">删除</a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</body>

</html>