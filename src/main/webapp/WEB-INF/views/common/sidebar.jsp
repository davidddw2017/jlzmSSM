<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="assets/images/user2-160x160.jpg" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p>吉林智明</p>
        <a href="#">
          <i class="fa fa-circle text-success"></i>
          Online
        </a>
      </div>
    </div>
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">主面板</li>
      <li>
        <a href="<%=basePath%>">
          <i class="fa fa-dashboard"></i>
          <span>主页</span>
        </a>
      </li>
      <li class="treeview active">
        <a href="#">
          <i class="fa fa-files-o"></i>
          <span>人员管理</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li>
            <a href="userList">
              <i class="fa fa-circle-o"></i>
              花名册
            </a>
          </li>
          <li>
            <a href="pages/layout/boxed.html">
              <i class="fa fa-circle-o"></i>
              Boxed
            </a>
          </li>
          <li>
            <a href="pages/layout/fixed.html">
              <i class="fa fa-circle-o"></i>
              Fixed
            </a>
          </li>
          <li>
            <a href="pages/layout/collapsed-sidebar.html">
              <i class="fa fa-circle-o"></i>
              Collapsed Sidebar
            </a>
          </li>
        </ul>
      </li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-pie-chart"></i>
          <span>Charts</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li>
            <a href="pages/charts/chartjs.html">
              <i class="fa fa-circle-o"></i>
              ChartJS
            </a>
          </li>
          <li>
            <a href="pages/charts/morris.html">
              <i class="fa fa-circle-o"></i>
              Morris
            </a>
          </li>
          <li>
            <a href="pages/charts/flot.html">
              <i class="fa fa-circle-o"></i>
              Flot
            </a>
          </li>
          <li>
            <a href="pages/charts/inline.html">
              <i class="fa fa-circle-o"></i>
              Inline charts
            </a>
          </li>
        </ul>
      </li>
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>