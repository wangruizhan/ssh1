<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
 <link rel="stylesheet" href="<%=path %>/css/style1.css"> 
</head>
<body>
	<div class="container">
		<div class="head">
			<a class="btn btn-primary"
				href="<%= request.getContextPath() %>/logout.action">退出</a>
		</div>
		<div class="body">
			<div class="menu">
				<ul id="mytab" class="nav nav-tabs nav-stacked" role="tablist">
					<li role="presentation" class=""><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
					<li role="presentation"><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
				</ul>
			</div>
			<div class="kehuguanli">
				<div class="cust">
					<h3>discount管理</h3>
				</div>


<div class="panel panel-info">
					<div class="panel-heading">
						<div>新建用户</div>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/doSpecialDiscount_update!update.do?" Method="post" name="loginForm">
                    
                     <s:iterator id="om_special_discount" value="om_special_discount">
										<tr class="success">
							<td>
							<div class="form-group">
									<label class="col-md-4 control-label">Discount_ID：</label>
									<div class="col-md-4">
										<input type="text" name="delet_id" readonly="readonly" value="${discount_id}" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label">折扣名称：</label>
									<div class="col-md-4">
										<input type="text" name="discount_name"  value="${discount_name}" class="form-control">
									</div>
								</div>
					
        
                   
                    <div class="form-group">
                        <label class="col-md-4 control-label">客户代码：</label>
                        <div class="col-md-4">
                            <input type="text" name="cust_code" value="${cust_code}"
											class="form-control" placeholder="">
                        </div>
                    </div>
								

										
                    <div class="form-group">
                        <label class="col-md-4 control-label">折扣金额：</label>
                         <div class="col-md-4">
                            <input type="text" name="amount" value="${amount}"
											class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">已用金额：</label>
                         <div class="col-md-4">
                            <input type="text" name="applied_amount" value="${applied_amount}"
											class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">折扣余额：</label>
                         <div class="col-md-4">
                            <input type="text" name="balance" value="${balance}"
											class="form-control" placeholder="">
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="col-md-4 control-label">有效：</label>
                        <div class="col-md-4">
                            <input type="text" name="activity" value="${activity}"
											class="form-control" placeholder="">
                        </div>
                    </div>
                    </tr>
                    </s:iterator> 
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-md-4">
                            <button type="submit"
											class="btn btn-default">更改</button>
                            <button type="submit"
											class="btn btn-default">取消</button>
                        </div>
                    </div>
                
							</form>

						</div>
					</div>
				</div>








			</div>
		</div>
	</div>
	
	<script src="../js/jquery-2.1.4.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="AJAX.js"></script>
</body>
</html>