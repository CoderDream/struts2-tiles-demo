<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path;
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<link href="../resources/css/style.css" rel="stylesheet"
	type="text/css" />
<script language="JavaScript" src="../resources/js/jquery.js"></script>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	list-style: none;
}

html, body {
	height: 100%;
	overflow: hidden;
}
/*reset panel posotion*/
.panel {
	position: absolute;
	top: 0px;
	right: 0px;
	bottom: 0px;
	left: 0px;
	z-index: 1;
}

.top {
	height: 88px;
	background-color: #ccc;
}

.left {
	top: 88px;
	bottom: 50px;
	width: 187px;
	background-color: #eee;
}

.main {
	left: 187px;
	top: 88px;
	bottom: 0px; /* 取决于bottom， 如果没有bottom，则设置为0px */
	background-color: #f5f5f5;
}

.bottom {
	top: auto;
	height: 50px;
	background-color: #ccc;
}

.panel iframe {
	width: 100%;
	height: 100%;
}

/* class for hide top*/
.hidetop .top {
	display: none;
}

.hidetop .left, .hidetop .main {
	top: 0px;
}

/* class for hide bottom*/
.hidebottom .bottom {
	display: none;
}

.hidebottom .left, .hidebottom .main {
	bottom: 0px;
}

/*class for hide left*/
.hideleft .left {
	display: none;
}

.hideleft .main {
	left: 0px;
}

/* HACK:*IE6/7 _IE6*/
html {
	*padding: 50px 0px 50px 0px;
}

.panel {
	*position: relative;
}

.top {
	*margin-top: -50px;
	*margin-bottom: 0px;
	background: url(../resources/images/topbg.gif) repeat-x;
}

.left {
	*height: 100%;
	*float: left;
	*top: 0px;
}

.main {
	*height: 100%;
	*top: 0;
	*left: 0px;
	_left: -3px;
} /*IE 6 float 3px bug*/
.hidetop {
	*padding-top: 0px;
}

.hidebottom {
	*padding-bottom: 0px;
}

.hideleft {
	*padding-left: 0px;
}
</style>
<script type="text/javascript">
	function toggleClass(dom, className) {
		var reg = new RegExp(className, "g"), cn = dom.className, newcn = cn
				.indexOf(className) == -1 ? (cn + " " + className) : cn
				.replace(reg, "");
		dom.className = newcn;
	}
</script>

</head>
<body>
	<div class="panel top">
		<tiles:insertAttribute name="header" />
	</div>
	<div class="panel left">
		<tiles:insertAttribute name="menu" />
	</div>
	<div class="panel main">
		<tiles:insertAttribute name="body" />
	</div>
</body>
</html>