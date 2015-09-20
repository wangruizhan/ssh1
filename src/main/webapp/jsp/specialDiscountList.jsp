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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>一次性折扣列表</title>
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
					<li role="presentation" class=""><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
					<li role="presentation"><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
				</ul>
			</div>
			<div class="kehuguanli">
				<div class="cust">
					<h3>normalDiscount管理</h3>
				</div>

				<div class="panel panel-info">
					<div class="panel-heading">
						<div>客户列表</div>
						<a class="btn btn-primary btn-md" name="add"
												href="<%= request.getContextPath() %>/doSpecialDiscount_toadd!toadd.do">新建</a>

					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table
								class="table table-striped table-bordered table-hover table-condensed">
								<thead>
									<tr class="active">
										<th>操作</th>
										<th>折扣名称</th>
										<th>客户代码</th>
										<th>折扣金额</th>
										<th>已用金额</th>
										<th>折扣余额</th>
										<th>有效</th>
									</tr>
								</thead>
								<tbody>

									<s:iterator  value="om_special_discount_List">
										<tr class="success">
											<td>
											<a class="btn btn-primary btn-sm" name="delet_id"
											href="<%= request.getContextPath() %>/doSpecialDiscount_toupdate!toupdate.do?delet_id=${discount_id}">编辑</a>
											<td align="center" name="discount_name">${discount_name}</td>
											<td align="center" name="type">${cust_code}</td>
											<td align="center" name="discount_base">${amount}</td>
											<td align="center" name="base_qty">${applied_amount}</td>
											<td align="center" name="discount_rate">${balance}</td>
											<td align="center" name="activity">${activity}</td>
											
											
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</div>
					</div>
					<div class="panel-footer">
						<div class="fenpage">
							<nav class="bottom_nav">
							
							</nav>
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