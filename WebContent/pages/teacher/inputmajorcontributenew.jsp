<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%    
      String path = request.getContextPath();
      String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
       
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath%>">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>录入教改项目信息</title>
    <link href="lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <link href="lib/ligerUI/skins/ligerui-icons.css" rel="stylesheet" type="text/css" />
    <link href="css/Data.css" rel="stylesheet" type="text/css" />
    <script src="lib/jquery/jquery-1.5.2.min.js" type="text/javascript"></script> 
    <script src="js/addPerson.js" type="text/javascript"></script>
    <script src="js/vanadium.js" type="text/javascript"></script>
	<script src="js/check.js" type="text/javascript"></script>
	<link href="css/input.css" rel="stylesheet" type="text/css" />
	<link href="css/upload.css" rel="stylesheet" type="text/css" />
	<script src="js/teacher/inputInfo.js" type="text/javascript"></script>
	<script src="lib/ligerUI/js/ligerui.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(function ()
	{
		$("#checkTimeR").ligerDateEditor({ showTime: true, width: 130, label: '申报时间', labelWidth: 123,labelAlign: 'center', format: "yyyy-MM-dd"});
		$("#timeContribute").ligerDateEditor({ showTime: true, width: 130, label: '立项时间', labelWidth: 123,labelAlign: 'center', format: "yyyy-MM-dd"});
		$("#endTimeR").ligerDateEditor({ showTime: true, width: 130, label: '结项时间', labelWidth: 123,labelAlign: 'center', format: "yyyy-MM-dd"});
	});
	</script>
</head>
<body style="padding:0px;">
	<form id="form" name="form" action="submitMajorContributeNew.action" onsubmit="return checkClickAndSubmit();" method="post" enctype="multipart/form-data">
	<div id="allpage">
	<div class="item">
		<div class="title">
			录入教改项目信息
			<div class="clear"></div>
		</div>
		<div class="content">
			<div class="line">
				<div class="element">
					<label for="classContribute">项目级别:</label>
					<input type="text" id="classContribute" name="classContribute" class=":required" />
				</div>
				<div class="element">
					<label for="typeContribute">项目类别:</label>
					<input type="text" id="typeContribute" name="typeContribute" class=":required" />
				</div>
				<div class="element">
					<label for="majorName">项目名称:</label>
					<input type="text" id="majorName" name="majorName" class=":required" />
				</div>
				
			</div>
			<div class="line">
				
				<div class="element">
					<label for="checkTimeR"></label>
					<input type="text" id="checkTimeR" name="checkTimeR" />
				</div>
				<div class="element">
					<label for="timeContribute"></label>
					<input type="text" id="timeContribute" name="timeContribute" />
				</div>
				<div class="element">
					<label for="endTimeR"></label>
					<input type="text" id="endTimeR" name="endTimeR" />
				</div>
			</div>
			<div class="line">
				<div class="element">
					<label for="projectSource">项目来源:</label>
					<input type="text" id="projectSource" name="projectSource" />
				</div>
				<div class="element">
					<label for="reportedAmounts">申报金额:</label>
					<input type="text" id="reportedAmounts" name="reportedAmounts" class=":number"/>
				</div>
				<div class="element">
					<label for="remarks">备注:</label>
					<input type="text" id="remarks" name="remarks" />
				</div>
			</div>
			<div class="line">
			
					<div class="element">
					<label for="rewardCollege">学院奖励:</label>
					<input type="text" id="rewardCollege" name="rewardCollege" class=":number" />
				</div>			
			</div>
			<div class="clear" style="height:15px;"></div>
			<div class="title">
			负责人信息
			</div>
			<div id="membertoolbar"></div>
			<div class="line spe">
				<div class="element del person">
					<label for="memberName">负责人姓名:</label>
					<input type="text" id="memberName" name="memberName" />
				</div>
				<div class="element del detail">
					<label for="remarksMem">备注:</label>
					<input type="text" id="remarksMem" name="remarksMem" />
				</div>
				<div class="element del">
					<input type="button" style="width:50px;" name="Par" class="delPerson" value="删除" />
				</div>
			</div>
			
			<div id="hippo" style="margin:0; padding:0">
			<div class="clear" style="height:15px;"></div>
    			<div class="title">
    			上传旁证材料
    			</div>
    			<div id="newproofstoolbar"></div>
    			<div class="clear" style="height:15px;"></div>
				<div class="disc common">
					<div class="left text">
						<input type="file" class="file" name="upload" value="浏览" />
					</div>
					<div class="left btn">
						<input type="button" style="width:50px;" name="Par" class="delPerson" value="删除" />
					</div>
					<div class="left">
						<label for="descProof">材料描述：</label>
						<input type="text" id="descProof" name="descProof" />
					</div>
					<div class="clear"></div>
				</div>
			</div>
			
		</div>
		
	</div>
	
	<p id="tijiao">
		<input type="submit" id="submit" name="submit" onclick="checkResult('save');" class="btn" value="保存" />
		<input type="submit" id="submit" name="submit" onclick="checkResult('confirm');" class="btn" value="提交" />
		<input type="reset" class="btn" value="重置" />
	</p>
	</div>
	</form>
	
</body>
</html>