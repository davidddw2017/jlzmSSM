<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/global.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>后台管理</title>
<%@ include file="common/basecss.jsp"%>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <%@ include file="common/header.jsp"%>
  <!-- Left side column. contains the logo and sidebar -->
  <%@ include file="common/sidebar.jsp"%>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> Dashboard <small>Control panel</small> </h1>
      <ol class="breadcrumb">
        <li> <a href="#"> <i class="fa fa-dashboard"></i> Home </a> </li>
        <li class="active">Dashboard</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">开发部花名册</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body" id="emp-container">
              <div class="mailbox-controls no-padding">
                <div class="btn-group">
                  <button type="button" class="btn btn-default btn-sm " data-toggle="modal" data-target="#modal-default">
                    <i class="fa fa-trash-o"></i> 新增
                  </button>
                  <button type="button" class="btn btn-default btn-sm btn-delete">
                    <i class="fa fa-reply"></i> 批量刪除
                  </button>
                  <button type="button" class="btn btn-default btn-sm">
                    <i class="fa fa-reply"></i> 批量刪除
                  </button>
                </div>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm">
                  <i class="fa fa-refresh"></i> 導入
                </button>
                <div class="pull-right">
                  <div class="table_page_length">
                    <label>每页
                      <select id="page" name="page" class="form-control input-sm">
                        <option value="10">10</option>
                        <option value="15">15</option>
                        <option value="30">30</option>
                      </select> 项
                    </label>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
              <table class="table table-striped table-bordered table-hover nowrap" id="emp-table">
                <thead>
                  <tr>
                    <th>
                      <input type="checkbox" name="cb-check-all" class="iCheck">
                    </th>
                    <th>编号</th>
                    <th>用户编号</th>
                    <th>用户名</th>
                    <th>部门</th>
                    <th>电话</th>
                    <th>Email</th>
                    <th>標籤</th>
                  </tr>
                </thead>
              </table>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row (main row) -->
      <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">新增或修改</h4>
              </div>
              <div class="modal-body">
                <!-- form start -->
                <form class="form-horizontal" id="emp-form">
                  <div class="box-body">
                    <input type="text" style="display:none" id="hidden_id" name="hidden_id" />
                    <div class="form-group">
                      <label for="userid" class="col-sm-2 control-label">编号</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="userid" name="userid" placeholder="编号">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="username" class="col-sm-2 control-label">用户名</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="username" name="username" placeholder="用户名" required>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="password" class="col-sm-2 control-label">密码</label>
                      <div class="col-sm-10">
                        <input type="password" class="form-control" id="password" name="password" placeholder="密码" 
                          data-parsley-minlength="8"
                          data-parsley-minlength-message="密码位数不可少于8位"
                          required>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="tel" class="col-sm-2 control-label">电话</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="tel" name="tel" placeholder="电话" required 
                          data-parsley-trigger="change" >
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="partment" class="col-sm-2 control-label">部门</label>
                      <div class="col-sm-10">
                        <select class="select2 form-control" style="width: 100%;" id="partment" placeholder="部门" name="partment">
                          <option selected="selected">框架研发</option>
                          <option>项目管理</option>
                          <option>启明星</option>
                          <option>BU产品</option>
                          <option>公共产品</option>
                          <option>BU研发</option>
                          <option>其他</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="email" class="col-sm-2 control-label">Email</label>
                      <div class="col-sm-10">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required 
                          data-parsley-trigger="change">
                      </div>
                    </div>
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal"><i class="fa fa-close"></i> 关闭</button>
                <button type="button" class="btn btn-primary" id="submit_emp"><i class="fa fa-check"></i> 保存更改</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <%@ include file="common/footer.jsp"%>
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<%@ include file="common/basejs.jsp"%>
</body>
</html>