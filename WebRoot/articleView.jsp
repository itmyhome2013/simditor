<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'articleList.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link media="all" rel="stylesheet" type="text/css" href="bootstrap/styles/bootstrap.css" />
		<link media="all" rel="stylesheet" type="text/css" href="bootstrap/styles/jumbotron-narrow.css" />
		<link media="all" rel="stylesheet" type="text/css" href="simditor/styles/simditor.css" />
		
		<script type="text/javascript" src="syntaxhighlighter/scripts/shCore.js"></script>
		<script type="text/javascript" src="syntaxhighlighter/scripts/shBrushBash.js"></script>
		<script type="text/javascript" src="syntaxhighlighter/scripts/shBrushCss.js"></script>
		<script type="text/javascript" src="syntaxhighlighter/scripts/shBrushCSharp.js"></script>
		<script type="text/javascript" src="syntaxhighlighter/scripts/shBrushJScript.js"></script>
		<script type="text/javascript" src="syntaxhighlighter/scripts/shBrushPhp.js"></script>
		<script type="text/javascript" src="syntaxhighlighter/scripts/shBrushPlain.js"></script>
		<script type="text/javascript" src="syntaxhighlighter/scripts/shBrushPython.js"></script>
		<script type="text/javascript" src="syntaxhighlighter/scripts/shBrushJava.js"></script>
		<script type="text/javascript" src="syntaxhighlighter/scripts/shBrushScala.js"></script>
		<script type="text/javascript" src="syntaxhighlighter/scripts/shBrushSql.js"></script>
		<script type="text/javascript" src="syntaxhighlighter/scripts/shBrushXml.js"></script>
		<script type="text/javascript" src="syntaxhighlighter/scripts/shBrushPerl.js"></script>
		<link type="text/css" rel="stylesheet" href="syntaxhighlighter/styles/shCore.css" />
		<link type="text/css" rel="stylesheet" href="syntaxhighlighter/styles/shThemeDefault.css" />
		<script type="text/javascript">
				SyntaxHighlighter.defaults['toolbar'] = false;  //去掉右上角问号图标
				SyntaxHighlighter.config.tagName = 'pre';       //可以更改解析的默认Tag。
				SyntaxHighlighter.config.bloggerMode = true; 
				SyntaxHighlighter.config.stripBrs = true;  
				SyntaxHighlighter.all();
		</script>
	</head>

	<body>
		<div class="container">
			<div class="header">
				<ul class="nav nav-pills pull-right" role="tablist">
				</ul>
				<h3 class="text-muted">
					${title }
				</h3>
			</div>

			<div class="jumbotron">
				${content }
			</div>
		</div>

	</body>
	</body>
</html>
