<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%    
      String path = request.getContextPath();
      String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath%>">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>添加动态数据库字段</title>
    <link href="lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <link href="lib/ligerUI/skins/ligerui-icons.css" rel="stylesheet" type="text/css" />
    <link href="css/Data.css" rel="stylesheet" type="text/css" />
    <script src="lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script> 
    <script src="js/addPerson.js" type="text/javascript"></script>
    <script src="js/vanadium.js" type="text/javascript"></script>
	<script src="js/check.js" type="text/javascript"></script>
	<link href="css/input.css" rel="stylesheet" type="text/css"/>
	<link href="css/upload.css" rel="stylesheet" type="text/css"/>
	<script src="js/teacher/inputInfo.js" type="text/javascript"></script>
	<script src="lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script>
</head>
<body style="padding:0px;">
	<form id="form" name="form" action="modifyDynamicDataField.action" onsubmit="return checkClickAndSubmit();" method="post">
	<div id="allpage">
	<div class="item">
		<div class="content">
			<div class="title">
				字段所属类：<s:property value="#infoName"/>
			</div>
			<div class="clear" style="height:15px;"></div>
			<div class="title">
				修改字段
				<input type="hidden" name="classNum" value="<s:property value="#classNum"/>"/>
				<input type="hidden" name="fieldId" value="<s:property value="#field.id"/>"/>
				<input type="hidden" name="oldOrder" value="<s:property value="#field.order"/>"/>
			</div>
			<div class="item">
				<div class="element del person">
					<label for="fieldName">字段数据库名：</label>
					<input type="text" name="fieldName" value="<s:property value="#field.name"/>" class=":required"/>
				</div>
				<div class="element del detail">
					<label for="remarksMem">字段前台展示名：</label>
					<input type="text" name="fieldDes" value="<s:property value="#field.description"/>" class=":required"/>
				</div>
				<div class="element del detail">
					<label for="remarksMem">字段展示顺序：</label>
					<select style="width:150px" name="newOrder">
						<%
							int count = (Integer) request.getAttribute("count");
							for(int i=1; i<=count; i++) {
						%>
							<option value="<%=i %>"><%=i %></option>
						<% 
							}
						%>
					</select>
				</div>
			</div>
		</div>
			
	</div>
	
	<div class="clear" style="height:15px;"></div>
	
	<p id="tijiao">
		<input type="submit" id="submit" name="submit" onclick="checkResult('confirm');" class="btn" value="提交" />
		<input type="reset" class="btn" value="重置" />
	</p>
	</div>
	</form>
	
</body>
</html>