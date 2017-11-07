<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri=""%> --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公共的页面</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<link type="text/css" rel="stylesheet" href="<%=basePath %>statics/css/dtree.css" />
<script type="text/javascript" src="<%=basePath %>statics/js/dtree.js"></script>

<link rel="stylesheet" type="text/css" href="<%=basePath %>statics/easyui/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>statics/css/my.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>statics/css/icon.css">
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/easyui-lang-zh_CN.js"></script>

</head>
</html>