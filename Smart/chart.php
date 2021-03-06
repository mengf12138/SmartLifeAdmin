<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>SmartLife后台管理</title>
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
 <!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
 <!-- Morris Chart Styles-->
<link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
	<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
 <!-- Google Fonts-->

</head>
<body>
<?php
	require_once 'chk_login.php';
?>
<div id="wrapper">
	<nav class="navbar navbar-default top-navbar" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.php"><strong>SmartLife后台管理</strong></a>
		</div>

		<ul class="nav navbar-top-links navbar-right">
			
			<!-- /.dropdown -->
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
					<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
					</li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
					</li>
					<li class="divider"></li>
					<li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
					</li>
				</ul>
				<!-- /.dropdown-user -->
			</li>
			<!-- /.dropdown -->
		</ul>
	</nav>
	<!--/. NAV TOP  -->
	<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">

				<li>
					<a href="index.php"><i class="fa fa-dashboard"></i> Dashboard</a>
				</li>
				<li>
					<a href="ui-elements.php"><i class="fa fa-desktop"></i> UI Elements</a>
				</li>
				<li>
					<a href="chart.php" class="active-menu"><i class="fa fa-bar-chart-o"></i> Charts</a>
				</li>
				<li>
					<a href="tab-panel.php"><i class="fa fa-qrcode"></i> Tabs & Panels</a>
				</li>
				
				<li>
					<a href="table.php"><i class="fa fa-table"></i> Responsive Tables</a>
				</li>
				<li>
					<a href="form.php"><i class="fa fa-edit"></i> Forms </a>
				</li>


				<li>
					<a href="#"><i class="fa fa-sitemap"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li>
							<a href="#">Second Level Link</a>
						</li>
						<li>
							<a href="#">Second Level Link</a>
						</li>
						<li>
							<a href="#">Second Level Link<span class="fa arrow"></span></a>
							<ul class="nav nav-third-level">
								<li>
									<a href="#">Third Level Link</a>
								</li>
								<li>
									<a href="#">Third Level Link</a>
								</li>
								<li>
									<a href="#">Third Level Link</a>
								</li>

							</ul>

						</li>
					</ul>
				</li>
				<li>
					<a href="empty.html"><i class="fa fa-fw fa-file"></i> Empty Page</a>
				</li>
			</ul>

		</div>

	</nav>
	<!-- /. NAV SIDE  -->
	<div id="page-wrapper">
	  <div class="header"> 
					<h1 class="page-header">
						 Charts <small>Show up your stats</small>
					</h1>
					<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li><a href="#">Charts</a></li>
				  <li class="active">Data</li>
				</ol> 
								
	</div>
		<div id="page-inner"> 
		 
			<div class="row"> 
				
				  
						   <div class="col-md-6 col-sm-12 col-xs-12">                     
				<div class="panel panel-default">
					<div class="panel-heading">
						Bar Chart
					</div>
					<div class="panel-body">
						<div id="morris-bar-chart"></div>
					</div>
				</div>            
			</div>
				  <div class="col-md-6 col-sm-12 col-xs-12">                     
				<div class="panel panel-default">
					<div class="panel-heading">
						Area Chart
					</div>
					<div class="panel-body">
						<div id="morris-area-chart"></div>
					</div>
				</div>            
			</div> 
			
	   </div>
			 <!-- /. ROW  -->
			<div class="row">                     
				  
						   <div class="col-md-6 col-sm-12 col-xs-12">                     
				<div class="panel panel-default">
					<div class="panel-heading">
						Line Chart
					</div>
					<div class="panel-body">
						<div id="morris-line-chart"></div>
					</div>
				</div>            
			</div>
				  <div class="col-md-6 col-sm-12 col-xs-12">                     
				<div class="panel panel-default">
					<div class="panel-heading">
						Donut Chart
					</div>
					<div class="panel-body">                            
						<div id="morris-donut-chart"></div>
					</div>
				</div>            
			</div> 
			
	   </div>
			 <!-- /. ROW  -->
			 <footer><p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://www.mycodes.net/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p></footer>
			</div>
		 <!-- /. PAGE INNER  -->
		</div>
	 <!-- /. PAGE WRAPPER  -->
	</div>
 <!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="assets/js/jquery-1.10.2.js"></script>
  <!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="assets/js/jquery.metisMenu.js"></script>
 <!-- Morris Chart Js -->
 <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="assets/js/morris/morris.js"></script>
  <!-- Custom Js -->
<script src="assets/js/custom-scripts.js"></script>


</body>
</html>
