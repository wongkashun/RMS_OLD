<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="purviewTag" prefix="purviewTag"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色管理</title>
<link href="/RMS/css/admin/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/RMS/js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="/RMS/js/admin/center.js"></script>
<style type="text/css" title="currentStyle">
@import "/RMS/js/media/css/demo_page.css";

@import "/RMS/js/media/css/demo_table.css";
</style>
<script type="text/javascript" language="javascript"
	src="/RMS/js/media/js/jquery.dataTables.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#example').dataTable({
			"oLanguage" : {
				"sUrl" : "./dataTables/1.txt"
			},
			"bStateSave" : true,
			"sPaginationType" : "full_numbers"//分页
		});
	});
</script>
</head>
<body id="dt_example">
	<form action="roleInfo.action" id="formList" method="post">
		<div class="center">
			<div class="position">
				<div class="positionleft"></div>
				<div class="positionmiddle">
					<table class="positionmiddletable" cellpadding="0" cellspacing="0">
						<tr>
							<td style="vertical-align: middle; text-align: left;"><img
								src="/RMS/images/tb.gif" /> <span
								style="font-size: 12px; font-weight: bold; margin-bottom: 15px;">你当前的位置:</span>[教师角色管理]-[重新分配角色]
							</td>
							<td valign="bottom"
								style="text-align: right; vertical-align: middle;"><a
								href="javascript:window.history.back()"><img
									src="/RMS/images/44.png" />返回</a> <input type="checkbox"
								id="topCheckAll" style="vertical-align: middle;" />
								全选&nbsp;&nbsp;&nbsp;&nbsp; <purviewTag:purviewTag
									imagePath="/RMS/images/22.gif" name="分配角色" id="update"
									url="assignRole.action?userId=${userId  }"
									simpleName="assignRole"></purviewTag:purviewTag></td>
						</tr>
					</table>
				</div>
				<div class="positionright"></div>
			</div>
			<div id="container" class="content" style="margin-top: 0px;">
				<table class="addtable" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="7"
							style="background-image: url('/RMS/images/bg.gif'); text-align: left;">
							<b>检索条件</b>
						</td>
					</tr>
				</table>
				<table cellpadding="0" cellspacing="0" class="display"
					style="font-size: 12px;" id="example" align="center">
					<thead>
						<tr>
							<td colspan="11"
								style="background-image: url('/RMS/images/bg.gif'); text-align: left;">
								<b>角色列表</b>
							</td>
						</tr>
						<tr>
							<th><input type="checkbox" id="checkAll" /></th>
							<th>角色编号</th>
							<th>角色名称</th>
							<th>角色说明</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty roleList}">
							<c:forEach items="${roleList}" var="roleInfo">
								<c:if test="${not empty roleInfo}">
									<tr>
										<td><input type="checkbox" name="roleId"
											onclick="isCheckAll();" value="${roleInfo.roleId  }" /></td>
										<td>${roleInfo.roleId }</td>
										<td>${roleInfo.roleName }</td>
										<td>${roleInfo.description }</td>
									</tr>
								</c:if>
							</c:forEach>
						</c:if>
						<c:if test="${empty roleList}">
							<tr>
								<td colspan="11"><span style="color: red;">没有你要查找的记录！</span>
								</td>
							</tr>
						</c:if>
					</tbody>
					<tfoot></tfoot>
				</table>
			</div>
			<div class="foot">
				<div class="footleft"></div>
				<div class="footmiddle"></div>
				<div class="footright"></div>
			</div>
		</div>
	</form>
</body>
</html>