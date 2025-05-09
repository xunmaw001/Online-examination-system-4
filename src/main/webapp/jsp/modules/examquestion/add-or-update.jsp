<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
<%@ include file="../../static/head.jsp"%>
<link
	href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
	rel="stylesheet">
<script type="text/javascript" charset="utf-8">
	window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
</script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
.error {
	color: red;
}

</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="content">
			<!-- Top Navigation -->
			<%@ include file="../../static/topNav.jsp"%>
			<!-- Menu -->
			<div class="container menu-nav">
				<nav class="navbar navbar-expand-lg lochana-bg text-white">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="ti-menu text-white"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<div class="z-navbar-nav-title">$template2.back.menu.title.text</div>
						<ul id="navUl" class="navbar-nav mr-auto">

						</ul>
					</div>
				</nav>
			</div>
			<!-- /Menu -->
			<!-- Breadcrumb -->
			<!-- Page Title -->
			<div class="container mt-0">
				<div class="row breadcrumb-bar">
					<div class="col-md-6">
						<h3 class="block-title">编辑试题</h3>
					</div>
					<div class="col-md-6">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/index.jsp"> <span
									class="ti-home"></span>
							</a></li>
							<li class="breadcrumb-item"><span>试题管理</span></li>
							<li class="breadcrumb-item active"><span>编辑试题</span></li>
						</ol>
					</div>
				</div>
			</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">试题信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<input id="paperId" name="paperid" type="hidden">
									<div class="form-group col-md-6">
										<label>试卷</label>
										 <select id="papernameSelect" name="papername" onchange="setPaperId()"
											class="form-control">
										</select>
									</div>

									<div class="form-group col-md-12">
										<label>试题</label>
										<textarea placeholder="试题" class="form-control" id="questionname" name="questionname" rows="3">
										</textarea>
									</div>

									<div class="form-group col-md-6">
										<label>类型</label> 
										<select id="typeSelect" name="type" class="form-control" onchange="setQuestionOption()">
											<option value="">请选择类型</option>
											<option class="typeOption" value="0">单选题</option>
											<option class="typeOption" value="1">多选题</option>
											<option class="typeOption" value="2">判断题</option>
											<option class="typeOption" value="3">填空题</option>
										</select>
									</div>

									<div id="optionsParent" class="form-group col-md-12" style="display: none;">
										<label>选项</label>
										<br>
										<button type="button" id="addBtn" class="btn btn-success">添加</button>
										<button type="button" id="deleteBtn" class="btn btn-warning">删除</button>
										<input id="options-input" name="options" type="hidden">
									</div>

									<div id="answerParent" class="form-group col-md-6">
										<label>答案</label> <input id="answer" name="answer"
											class="form-control" placeholder="答案">
									</div>

									<div class="form-group col-md-6">
										<label>分数</label> <input id="score" name="score"
											class="form-control" placeholder="分数">
									</div>

									<div class="form-group col-md-12">
										<label>分析</label>
										<textarea placeholder="分析" class="form-control" id="analysis" name="analysis" rows="3">
										</textarea>
									</div>

									<div class="form-group col-md-6">
										<label>排序</label> <input id="sequence" name="sequence"
											class="form-control" placeholder="排序">
									</div>

									<div class="form-group col-md-6">
									</div>
									
									<div class="form-group col-md-6 mb-3">
										<button id="submitBtn" type="button"
											class="btn btn-primary btn-lg">提交</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top"> <span
		class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script
		src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>

	<script>
		
	<%@ include file="../../utils/menu.jsp"%>
		
	<%@ include file="../../static/setMenu.js"%>
		
	<%@ include file="../../utils/baseUrl.jsp"%>
		var tableName = "examquestion";
		var pageType = "add-or-update";
		var updateId = "";
		var questionType = '';
		var optionCount = 4;
		
		var papernameOptions = [];

		function papernameSelect() {
			$.ajax({
				type : "GET",
				url : baseUrl + "option/exampaper/name",
				beforeSend : function(xhr) {
					xhr.setRequestHeader("token", window.sessionStorage
							.getItem('token'));
				},
				success : function(res) {
					if (res.code == 0) {
						papernameOptions = res.data;
						var nullOption = document
								.createElement('option');
						var papernameSelect = document
								.getElementById('papernameSelect');
						papernameSelect.appendChild(nullOption);
						for (var i = 0; i < papernameOptions.length; i++) {
							var papernameOption = document
									.createElement('option');
							papernameOption.setAttribute('name',
									'papernameOption');
							papernameOption.setAttribute('value',
									papernameOptions[i]);
							papernameOption.innerHTML = papernameOptions[i];
							if (ruleForm.papername == papernameOptions[i]) {
								papernameOption.setAttribute('selected',
										'selected');
							}
							papernameSelect.appendChild(papernameOption);
						}
					} else if (res.code == 401) {
						<%@ include file="../../static/toLogin.jsp"%>
					} else {
						alert(res.msg);
					}
				},
			});
		}

		var ruleForm = {};
		var vm = new Vue({
			el : '#addOrUpdateForm',
			data : {
				ruleForm : {},
			},
			beforeCreate : function() {
				var id = window.sessionStorage.getItem("id");
				if (id != null && id != "" && id != "null") {
					$.ajax({
						type : "GET",
						url : baseUrl + "examquestion/info/" + id,
						beforeSend : function(xhr) {
							xhr.setRequestHeader("token", window.sessionStorage
									.getItem('token'));
						},
						success : function(res) {
							if (res.code == 0) {
								vm.ruleForm = res.data;
							} else if (res.code == 401) {
								<%@ include file="../../static/toLogin.jsp"%>
							} else {
								alert(res.msg)
							}
						},
					});
				}
			},
			methods : {}
		});


		// 表单提交
		function submit() {
			if (validform() == true) {
				if(questionType < 2){
					setOptionJson();
				}
				let data = {};
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function(index, item) {
					data[item.name] = item.value;
				});
				let json = JSON.stringify(data);
				//console.log('json : ',json);
				var urlParam;
				var successMes = '';
				if (updateId != null && updateId != "null" && updateId != '') {
					urlParam = 'update';
					successMes = '修改成功';
				} else {

					urlParam = 'save';
					successMes = '添加成功';
				}
				$.ajax({
					type : "POST",
					url : baseUrl + "examquestion/" + urlParam,
					contentType : "application/json",
					data : json,
					beforeSend : function(xhr) {
						xhr.setRequestHeader("token", window.sessionStorage
								.getItem('token'));
					},
					success : function(res) {
						if (res.code == 0) {
							window.sessionStorage.removeItem('id');
							alert(successMes);
							window.location.href = "list.jsp";
						} else if (res.code == 401) {
							<%@ include file="../../static/toLogin.jsp"%>
						} else {
							alert(res.msg)
						}
					},
				});
			} else {
				alert("表单未填完整或有错误");
			}
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({
				rules : {
					questionname : {
						required : true,
					},
					type : {},
					options : {},
					answer : {},
					score : {
						required : true,
					},
					analysis : {
						required : true,
					},
					sequence : {
						required : true,
					},
				},
				messages : {
					questionname : {
						required : "试题不能为空",
					},
					type : {},
					options : {},
					answer : {},
					score : {
						required : "分数不能为空",
					},
					analysis : {
						required : "分析不能为空",
					},
					sequence : {
						required : "排序不能为空",
					},
				}
			}).form();
		}

		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if (id != null && id != "" && id != "null") {
				updateId = id;
				window.sessionStorage.removeItem('id');
				$.ajax({
					type : "GET",
					url : baseUrl + "examquestion/info/" + id,
					beforeSend : function(xhr) {
						xhr.setRequestHeader("token", window.sessionStorage
								.getItem('token'));
					},
					success : function(res) {
						if (res.code == 0) {
							ruleForm = res.data
							// 数据填充
							dataBind();
							//注册表单验证
							$(validform());
							papernameSelect();
						} else if (res.code == 401) {
							<%@ include file="../../static/toLogin.jsp"%>
						} else {
							alert(res.msg);
						}
					},
				});
			} else {
				papernameSelect();
				$('#answerParent').hide();
				//注册表单验证
				$(validform());
			}
		}
		// 下拉框选项回显
		function setSelectOption() {
		}

		// 清除可能会重复渲染的selection
		function clear(className) {
			var elements = document.getElementsByClassName(className);
			for (var i = elements.length - 1; i >= 0; i--) {
				elements[i].parentNode.removeChild(elements[i]);
			}
		}


		function dataBind() {
			$("#updateId").val(ruleForm.id);
			$("#paperId").val(ruleForm.paperid);
			$("#questionname").val(ruleForm.questionname);
			$("#options-input").val(ruleForm.options);
			$("#score").val(ruleForm.score);
			$("#analysis").val(ruleForm.analysis);
			$("#sequence").val(ruleForm.sequence);
			
			//类型下拉框回显
			var typeOptions = document.getElementsByClassName('typeOption')
			for(var i=0;i<typeOptions.length;i++){
				if(typeOptions[i].value == ruleForm.type){
					typeOptions[i].selected = true
				}
			}
			
			//选择题选项回显
			if(ruleForm.type < 2){
				setOptions();
			}
			
			if(ruleForm.type != 2){
				if(questionType == 3){
					// 重新渲染答案输入框
					$('#answerParent').children().remove();
					$('#answerParent').append("<label>答案</label><textarea id=\"answer\" name=\"answer\" class=\"form-control\" rows=\"2\" placeholder=\"答案\"></textarea>");
					//展示填空输入框
					$('#answerParent').show()
				}
				$('#answer').val(ruleForm.answer)
			}else{
				//隐藏选项框
				$('#optionsParent').hide();
				// 重新渲染答案输入框
				$('#answerParent').children().remove();
				$('#answerParent').append("<label>答案</label><select id=\"answer\" name=\"answer\" class=\"form-control\"><option class=\"answerOption\" value=\"A\">A.对</option><option class=\"answerOption\" value=\"B\">B.错</option></select>")	
				$('#answerParent').show()
				var answerOptions = document.getElementsByClassName('answerOption')
				for(var i=0;i<answerOptions.length;i++){
					if(answerOptions[i].value == ruleForm.answer){
						answerOptions[i].selected = true
					}
				}
			}

		}
		
		function setQuestionOption(){					
			var index = document.getElementById("typeSelect").selectedIndex
			var options = document.getElementById("typeSelect").options
			//设置题目类型	
			questionType = options[index].value
			
			// 选择题至少有两项
			if(questionType == 0 || questionType == 1){
				optionCount = 0;
				//展示选项框
				$('#optionsParent').show()
				// 清除旧的选项
				$('#optionsParent').children().remove();
				$('#optionsParent').append("<label>选项</label><br>");
				$('#optionsParent').append("<button id=\"addBtn\" onclick=\"addOption()\" class=\"btn btn-success\">添加</button>")		
				$('#optionsParent').append("<button id=\"deleteBtn\" onclick=\"deleteOption()\" class=\"btn btn-warning\">删除</button>")
				$('#optionsParent').append("<input id=\"options-input\" name=\"options\" type=\"hidden\">")
				$('#addBtn').before("<label id=\"labelA\">A. </label><input id=\"optionA\" class=\"option\" type=\"text\"><br><br>")
				$('#addBtn').before("<label id=\"labelB\">B. </label><input id=\"optionB\" class=\"option\" type=\"text\"><br><br>")
				$('#addBtn').before("<label id=\"labelC\">C. </label><input id=\"optionC\" class=\"option\" type=\"text\"><br><br>")
				$('#addBtn').before("<label id=\"labelD\">D. </label><input id=\"optionD\" class=\"option\" type=\"text\"><br><br>")
				//重新渲染答案表单项
				$('#answerParent').children().remove()
				$('#answerParent').append("<label>答案</label><input id=\"answer\" name=\"answer\" type=\"text\" class=\"form-control\" placeholder=\"多选用逗号隔开\">")
				$('#answerParent input').attr('maxlength',questionType*6+1)
				$('#answerParent').show()
				//隐藏添加按钮
				$("#addBtn").hide()
			}else if(questionType == 2){
				//隐藏选项框
				$('#optionsParent').hide();
				$("#options-input").val("[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]");			
				// 重新渲染答案输入框
				$('#answerParent').children().remove()
				$('#answerParent').append("<label>答案</label><select id=\"answer\" name=\"answer\" class=\"form-control\"><option class=\"answerOption\" value=\"A\">A.对</option><option class=\"answerOption\" value=\"B\">B.错</option></select>")	
				$('#answerParent').show()
			}else if(questionType == 3){
				//隐藏选项框
				$('#optionsParent').hide();
				//选项留空
				$('#options-input').val("[]")		
				// 重新渲染答案输入框
				$('#answerParent').children().remove();
				$('#answerParent').append("<label>答案</label><textarea id=\"answer\" name=\"answer\" class=\"form-control\" rows=\"3\" placeholder=\"答案\"></textarea>");
				//展示填空输入框
				$('#answerParent').show();
			}
			
		}
		//添加选择题选项
		function addOption(){
			if(optionCount == 4){
				$('#addBtn').before("<label id=\"labelA\">A. </label><input id=\"optionA\" class=\"option\"><br><br>")
				optionCount--
				$('#deleteBtn').hide()
			}else if(optionCount == 3){
				$('#addBtn').before("<label id=\"labelB\">B. </label><input id=\"optionB\" class=\"option\"><br><br>")				
				optionCount--
				$('#deleteBtn').hide()
			}else if(optionCount == 2){
				$('#addBtn').before("<label id=\"labelC\">C. </label><input id=\"optionC\" class=\"option\"><br><br>")				
				optionCount--	
				$('#deleteBtn').show()
			}else if(optionCount == 1){
				$('#addBtn').before("<label id=\"labelD\">D. </label><input id=\"optionD\" class=\"option\"><br><br>")
				optionCount--
				$('#addBtn').hide()
				$('#deleteBtn').show()
			}	
		}
		// 删除选择题选项
		function deleteOption(){
			var options = document.getElementsByClassName('option')
			var inputId = '#' + options[options.length-1].getAttribute("id")
				
			$(inputId).prev().remove()
			$(inputId).next().remove()
			$(inputId).next().remove()
			$(inputId).remove()
					
			optionCount++
			if(optionCount != 0){
				$('#addBtn').show()
			}
			// 如果只剩两个选项就不给删除
			if(options.length <= 2){
				$('#deleteBtn').hide()
			}
		}
		// 设置选项json串
		function setOptionJson(){			
			if(questionType == 0 || questionType == 1){
				var str = "["
				var options = document.getElementsByClassName('option')
				for(var i=0;i<options.length;i++){
					var id =  'option' + String.fromCharCode(65+i);
					if($('#'+id).val() ==null || $('#'+id).val() == '' || $('#'+id).val().trim() == ''){
						alert('还有选项没填!')
						return false
					}else{
						str = str + "{\"text\":\"" +  $('#'+id).val() + "\",\"code\":\"" + String.fromCharCode(65+i) + "\"}"
						if(i != options.length-1){
							str = str + ","
						}else{
							str = str + "]"
						}		
					}													
				}
				$('#options-input').val(str)
			}			
			return true
		}
		//回显选择题选项
		function setOptions(){
			var options = $.parseJSON(ruleForm.options);
			//展示选项框
			$('#optionsParent').show()
			if(options.length == 4){
				$('#addBtn').hide();
			}else if(options.length == 2){
				$('deleteBtn').hide();
			}
			for(var i=0;i<options.length;i++){
				var code = options[i].code;
				var text = options[i].text;
				$('#addBtn').before("<label id=\"label"+ code +"\">"+ code +". </label><input id=\"option"+ code +"\" class=\"option\" type=\"text\"><br><br>");
				$('#option'+code).val(text)
			}
		}
		//设置paperid
		function setPaperId(){
			var index = document.getElementById("papernameSelect").selectedIndex;
		    var options = document.getElementById("papernameSelect").options;
			$.ajax({
				type : "GET",
				url : baseUrl + "exampaper/page",
				data : {name : options[index].value },
				beforeSend : function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
				success : function(res) {
					if (res.code == 0) {
						$('#paperId').val(res.data.list[0].id);
					} else if (res.code == 401) {
						<%@ include file="../../static/toLogin.jsp"%>
					} else {
						alert(res.msg);
					}
				},
			});
		}
		$(document).ready(function() {
			//设置右上角用户名
			$('.dropdown-menu h5').html(
					window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();							
			getDetails();				
			$('#submitBtn').on('click', function(e) {
				e.preventDefault();
				//console.log("点击了...提交按钮");
				submit();
			});
			$('#addBtn').on('click', function(e) {
				e.preventDefault();
				addOption();
			});
			$('#deleteBtn').on('click', function(e) {
				e.preventDefault();
				deleteOption();
			});
		});
		// 用户登出
	<%@ include file="../../static/logout.jsp"%>
		
	</script>
</body>

</html>
