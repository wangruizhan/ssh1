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
				href="<%= request.getContextPath() %>/Logout_Logout!Logout.do">退出</a>
		</div>
		<div class="body">
			<div class="menu">
				<ul id="mytab" class="nav nav-tabs nav-stacked" role="tablist">
					<li role="presentation" class=""><a href="#">normalDiscount管理<span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
					<li role="presentation"><a href="#">设置<span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
				</ul>
			</div>
			<div class="kehuguanli">
				<div class="cust">
					<h3>normalDiscount</h3>
				</div>

				<div class="panel panel-info">
					<div class="panel-heading">
						<div>新建折扣</div>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<form class="form-horizontal" role="form" action="<%=request.getContextPath() %>/doNormalDiscount_add!add.do" Method="post" name="loginForm">
                    <div class="form-group">
                        <label class="col-md-4 control-label">折扣名称：</label>
                        <div class="col-md-4">
                            <input type="text" name="discount_name" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
             
                    <div class="form-group">
                        <label class="col-md-4 control-label">折扣类型：</label>
                        <div class="dropdown">
                         <s:select name="type_id" list="discounttypeList" listKey="type_id" listValue="type" headerKey="" headerValue="==请选择==" /> 
                         </div>  
                    </div>
               
                    <div class="form-group">
                        <label class="col-md-4 control-label">折扣基准:</label>
                        <div class="dropdown">
                         <s:select name="id" list="discountbaseList" listKey="id" listValue="discount_base" headerKey="" headerValue="==请选择==" /> 
                         </div>  
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label">基准数量:</label>
                        <div class="col-md-4">
                            <input type="text" name="base_qty" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-4 control-label">折扣率:</label>
                        <div class="col-md-4">
                            <input type="text" name="discount_rate" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">有效</label>
                        <div class="col-md-4">
                            <input type="text" name="activity" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                 
                    <div class="form-group">
                        <label class="col-md-4 control-label">有效时间从</label>
                        <div class="col-md-4">
                            <input type="date" name="activity_date_from" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">有效时间到</label>
                        <div class="col-md-4">
                            <input type="date" name="activity_date_to" class="form-control" placeholder="Frist Name">
                        </div>
                    </div>
                 
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-md-4">
                            <button type="submit" class="btn btn-default">新建</button>
                            <button type="submit" class="btn btn-default">取消</button>
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