<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>岗位/角色选择</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<meta name="MobileOptimized" content="320">
</head>
<body onload="">
<div class="modal-header">
	<h4 class="modal-title">组织</h4>
</div>
<div class="modal-body">
	<div class="portlet box grey" style="margin-top:-20px">
		<div class="portlet-title">
			<div class="caption"><i class="fa fa-user"></i>选择岗位、角色信息</div>
			<div class="tools">
				<a href="javascript:;" class="collapse"></a>
			</div>
		</div>
		<div class="portlet-body">
			<div id="historyDetailViewScroller" class="scroller" data-always-visible="1" data-rail-visible="1" style="height:300px">
				<div class="zTreeDemoBackground left">
					<ul id="postRoleChoiceTree" class="ztree"></ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal-footer">
</div>

<script type="text/javascript">
function chooseRole(event, treeId, treeNode)
{
	if(!treeNode.isParent)
	{
		// 如果选择的是角色，那么将岗位和角色信息提交到Controller
		var roleId = treeNode.id;
		$("#roleId").attr("value", roleId);
		$("#fm").submit();
	}
	else
	{
		alert("请选择角色");
	}
	//关闭Modal
	//$modal.modal('hide');
}

var setting = {
		data: {
			simpleData: {
				enable: true
			}
		},
		callback: {
			onClick: chooseRole
		},
		view: {
			dblClickExpand: false
		}
	};
var treeNodes;

$(document).ready(function(){
	App.scrollers();
	$(function(){  
	    $.ajax({  
	        async : false,  
	        cache:false,  
	        type: 'POST',  
	        dataType : "json",  
	        url: "getPostRoleForChoice?id="+Math.random(),
	        error: function (XMLHttpRequest, textStatus, errorThrown) {
	        	alert('Error:'+XMLHttpRequest.responseText);
	        },
	        success:function(data){
	            treeNodes = data;
	        }
	    });
	   $.fn.zTree.init($("#postRoleChoiceTree"), setting, treeNodes);
	  //默认展开列表
		var treeObj = $.fn.zTree.getZTreeObj("postRoleChoiceTree");
		treeObj.expandAll(true); 
	});  
});
</script>
</body>
</html>