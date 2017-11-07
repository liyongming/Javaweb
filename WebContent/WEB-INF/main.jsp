<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/statics/common/common.jsp"%>
<html>
<head>
<base href="<%=basePath%>">
<title></title>

<script type="text/javascript">
	$(function() {
		$("a[title]")
				.click(
						function() {
							var text = this.href;
							//判断是否存在
							if ($('#tt').tabs("exists", this.title)) {
								//存在则选中
								$('#tt').tabs("select", this.title);
							} else {
								$('#tt')
										.tabs(
												'add',
												{
													title : this.title,
													//面板有关闭按键
													closable : true,
													//href对远程页面js的支持不好 
													//href: text			
													//可以加载内容填充到选项卡，页面有Js时，也可加载
													content : "<iframe src='"
															+ text
															+ "' title='"
															+ this.title
															+ "' height='100%' width='100%' style='border:none' frameborder='0px' ></iframe>"

												});

							}
							return false;

						});
	});
</script>

</head>
<body class="easyui-layout">
	<!-- 头部 -->
	<div class="wu-header"
		data-options="region:'north',border:false,split:true">
		<div class="wu-header-left">
			<h1>人力资源管理系统</h1>
		</div>
		<div class="wu-header-right">
			<p><strong class="easyui-tooltip" title="n条未读消息">${sessionScope.admin.adminName}</strong>，欢迎您！</p>
			<p><a href="#">网站首页</a>|<a href="${bathPath }loginServlet?method=logout">安全退出</a>
		</div>
	</div>
	<!-- 左边导航 -->
	<div data-options="region:'west',title:'导航菜单',split:true"
		style="width: 180px;">
		<div id="aa" class="easyui-accordion" data-options="fit:true">
			
            
            <div title="管理员信息" >
				<ul style="list-style: none;padding: 0px;margin:0px;">
					<li style="padding: 6px;"><a href="${bathPath}userServlet?method=list" title="管理员信息管理"
						style="text-decoration: none;display: block;font-weight:bold;">管理员信息管理</a>
					</li>
					
				</ul>
			</div>
			<div title="职务信息">
				<!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
				<ul style="list-style: none; padding: 0px; margin: 0px;">
					<li style="padding: 6px;"><a
						href="${bathPath}dutyServlet?method=list" title="职务信息管理"
						style="text-decoration: none; display: block; font-weight: bold;">职务信息管理</a>
					</li>
					<%-- <li style="padding: 6px;"><a href="${bathPath}partnerServlet?method=loadSearchText" title="查询合作伙伴"
						style="text-decoration: none;display: block;font-weight:bold;">查询合作伙伴</a>
					</li> --%>
				</ul>
			</div>
			<%-- <div title="人事调动">
				<!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
				<ul style="list-style: none; padding: 0px; margin: 0px;">
					<li style="padding: 6px;"><a
						href="${bathPath}moveServlet?method=list" title="人事调动管理"
						style="text-decoration: none; display: block; font-weight: bold;">人事调动信息</a>
					</li>

				</ul>
			</div> --%>
			<div title="员工信息">
				<!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
				<ul style="list-style: none; padding: 0px; margin: 0px;">
					<li style="padding: 6px;"><a
						href="${bathPath}employeeServlet?method=list" title="员工基本信息管理"
						style="text-decoration: none; display: block; font-weight: bold;">员工基本信息管理</a>
					</li>
					<li style="padding: 6px;"><a
						href="${bathPath}userContract/queryPageContract" title="员工合同信息管理"
						style="text-decoration: none; display: block; font-weight: bold;">员工合同信息管理</a>
					</li>
	
				</ul>
			</div>
			
			<div title="部门管理">
				<!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
				<ul style="list-style: none; padding: 0px; margin: 0px;">
					<li style="padding: 6px;"><a
						href="${bathPath}DeptServlet?method=queryAll" title="部门管理"
						style="text-decoration: none; display: block; font-weight: bold;">部门管理</a>
					</li>

				</ul>
			</div>
			<div title="招聘信息">
				<!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
				<ul style="list-style: none; padding: 0px; margin: 0px;">
					<li style="padding: 6px;"><a
						href="${bathPath}jobServlet?method=list" title="招聘信息管理"
						style="text-decoration: none; display: block; font-weight: bold;">招聘信息管理</a>
					</li>

				</ul>
			</div>
				
			<div title="教育部门管理" >
				<ul style="list-style: none;padding: 0px;margin:0px;">
					<li style="padding: 6px;"><a href="${bathPath}eduServlet?method=list" title="学员课程信息管理"
						style="text-decoration: none;display: block;font-weight:bold;">学员课程信息管理</a>
					</li>
					<li style="padding: 6px;"><a href="${bathPath}eduServlet?method=list1" title="员工选课管理"
						style="text-decoration: none;display: block;font-weight:bold;">员工选课管理</a>
					</li>
					<li style="padding: 6px;"><a href="${bathPath}teacherServlet?method=list" title="教师信息管理"
						style="text-decoration: none;display: block;font-weight:bold;">教师信息管理</a>
					</li>
					<li style="padding: 6px;"><a href="${bathPath}gradeServlet?method=list" title="员工成绩管理"
						style="text-decoration: none;display: block;font-weight:bold;">员工成绩管理</a>
					</li>
					<li style="padding: 6px;"><a href="${bathPath}certificateServlet?method=list" title="员工证书管理"
						style="text-decoration: none;display: block;font-weight:bold;">员工证书管理</a>
					</li>
				</ul>
			</div>
			
			
			<%-- <div title="lq">
				<!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
				<ul style="list-style: none; padding: 0px; margin: 0px;">
					<li style="padding: 6px;"><a
						href="${bathPath}deptServlet?method=list" title="部门管理"
						style="text-decoration: none; display: block; font-weight: bold;">部门管理</a>
					</li>
					<li style="padding: 6px;"><a
						href="${bathPath}jobServlet?method=list" title="招聘信息管理"
						style="text-decoration: none; display: block; font-weight: bold;">招聘信息管理</a>
					</li>
				</ul>
			</div> --%>

		</div>
	</div>

	<!-- 主体内容 -->
	<div data-options="region:'center',title:'主要信息'"
		style="padding: 0px; background: #eee;">
		<div id="tt" class="easyui-tabs" data-options="fit:true"
			style="width: 500px; height: 250px;">
			<div title="系统介绍" style="padding: 20px;">这里可以写系统或公司的相关介绍等等</div>
		</div>
	</div>
	<div id="win"></div>
	<!-- end of main -->
	<!-- begin of footer -->
	<div class="wu-footer"
		data-options="region:'south',border:true,split:true">&copy; 2017
		Alex All Rights Reserved</div>

</body>

</html>