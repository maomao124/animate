<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="animate.css"/>
    <style>
        body {
            background-color: lightgoldenrodyellow;
        }

        div.link {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

        a {
            color: darkturquoise;
            text-decoration: none;
            display: flex;
            justify-content: center;
            align-items: center;

            padding: 0;
            list-style-type: none;
            font-size: 25px;
            width: 10em;
            height: 2em;
            text-align: center;
            line-height: 2em;
            font-family: sans-serif;
            text-transform: capitalize;
            position: relative;
            margin: 0.8em;
        }

        /* 添加了左右两个圆点 */
        a::before, a::after {
            content: '';
            position: absolute;
            width: 0.6em;
            height: 0.6em;
            background-color: gainsboro;
            top: calc(50% - 0.3em);
            border-radius: 50%;
            transition: 0.5s cubic-bezier(0.5, -0.5, 0.25, 1.5);
        }

        a::before {
            left: 0;
            z-index: -1;
        }

        a::after {
            right: 0;
            z-index: -2;
        }

        /* 添加悬浮效果 */
        a:hover {
            color: deeppink;
        }

        /* 给前后伪元素添加悬浮效果，注意先后顺序，先是hover后是伪元素 */
        a:hover::before, a:hover::after {
            width: 100%;
            height: 100%;
            border-radius: 0;
            background-color: dodgerblue;
        }

        a:hover::before {
            top: 0;
            left: -0.2em;
        }

        a:hover::after {
            right: -0.2em;
            filter: brightness(0.8);
        }

    </style>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br>
<div class="link">
    <%int n = 13;%>
    <%
        for (int i = 0; i < n; i++)
        {

    %>
    <a class="animated fadeInLeft" href="test<%=(i+1)%>.html">test<%=(i + 1)%>
    </a>
    <%
        }
    %>
</div>
</body>
</html>