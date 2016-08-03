<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Tiversa - Dashboard</title>

	<!-- Global stylesheets -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
	<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="assets/css/core.css" rel="stylesheet" type="text/css">
	<link href="assets/css/components.css" rel="stylesheet" type="text/css">
	<link href="assets/css/colors.css" rel="stylesheet" type="text/css">
	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script type="text/javascript" src="assets/js/plugins/loaders/pace.min.js"></script>
	<script type="text/javascript" src="assets/js/core/libraries/jquery.min.js"></script>
	<script type="text/javascript" src="/assets/js/core/libraries/bootstrap.min.js"></script>
	<script type="text/javascript" src="/assets/js/plugins/loaders/blockui.min.js"></script>
	<script type="text/javascript" src="/assets/js/plugins/ui/nicescroll.min.js"></script>
	<script type="text/javascript" src="/assets/js/plugins/ui/drilldown.js"></script>
	<script type="text/javascript" src="/assets/js/plugins/ui/fab.min.js"></script>
	<!-- /core JS files -->

    <!-- Map JS files -->
    <script type="text/javascript" src="/assets/js/plugins/maps/jvectormap/jvectormap.min.js"></script>
    <script type="text/javascript" src="/assets/js/plugins/maps/jvectormap/map_files/world.js"></script>
    <script type="text/javascript" src="/assets/js/plugins/maps/jvectormap/map_files/countries/usa.js"></script>
    <script type="text/javascript" src="/assets/js/plugins/maps/jvectormap/map_files/countries/germany.js"></script>
    <script type="text/javascript" src="/assets/data/malware_map/total_number.js"></script>
	<%--<script>--%>
		<%--var malwareData = JSON.parse('${requestScope.malwareMap}');--%>
<%--	</script>--%>
    <script type="text/javascript" src="/assets/js/maps/vector/vector_maps_demo.js"></script>
    <!--/Map JS files-->

    <!-- Theme JS files -->
	<script type="text/javascript" src="/assets/js/plugins/visualization/d3/d3.min.js"></script>
	<script type="text/javascript" src="/assets/js/plugins/visualization/d3/d3_tooltip.js"></script>

	<!--Pie chart JS files-->
	<!--<script type="text/javascript" src="assets/js/charts/d3/pies/pie_update.js"></script>-->
	<script type="text/javascript" src="/assets/js/index/pie_type.js"></script>
	<!--/Pie chart JS files-->

	<!--sortable vertical bar JS files -->
	<script type="text/javascript" src="/assets/js/charts/d3/bars/bars_advanced_sortable_vertical.js"></script>
	<!--/sortable vertical bar JS files -->

	<!--eChart JS files -->
	<script type="text/javascript" src="/assets/js/plugins/visualization/echarts/echarts.js"></script>
	<script type="text/javascript" src="/assets/js/index/pies_donuts.js"></script>
	<!--/eChart JS files -->

	<script type="text/javascript" src="/assets/js/plugins/forms/styling/switchery.min.js"></script>
	<script type="text/javascript" src="/assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script type="text/javascript" src="/assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
	<script type="text/javascript" src="/assets/js/plugins/ui/moment/moment.min.js"></script>
	<script type="text/javascript" src="/assets/js/plugins/pickers/daterangepicker.js"></script>

	<script type="text/javascript" src="/assets/js/core/app.js"></script>
	<script type="text/javascript" src="/assets/js/pages/dashboard.js"></script>

	<script type="text/javascript" src="/assets/js/plugins/ui/ripple.min.js"></script>
	<!-- /theme JS files -->

</head>

<body class="navbar-bottom">
<div><p>
	<a class="btn btn-primary btn-large" href="/login"> Sign in </a> or <a class="btn btn-primary btn-large" href="/register"> Sign up </a>
	<a class="btn btn-primary btn-large" href="/map"> Map Test </a>
	<a class="btn btn-primary btn-large" href="/filetype"> File Type Test </a>
	<a class="btn btn-primary btn-large" href="/liveFeed"> Live Feed Test </a>
</p></div>

	<!-- Page header -->
	<div class="page-header page-header-inverse bg-indigo">

		<!-- Main navbar -->
		<div class="navbar navbar-inverse navbar-transparent">
			<div class="navbar-header">
				<!--<a class="navbar-brand" href="index.html"><img src="assets/images/logo_light.png" alt=""></a>-->

				<ul class="nav navbar-nav pull-right visible-xs-block">
					<li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-grid3"></i></a></li>
				</ul>
			</div>

			<div class="navbar-collapse collapse" id="navbar-mobile">
				<p class="navbar-text">Tiversa</p>
				<p class="navbar-text"><span class="label bg-success-400">Premium</span></p>

				<ul class="nav navbar-nav">
					<li><a href="#">Upgrade</a></li>
				</ul>

				<div class="navbar-right">
					<ul class="nav navbar-nav">

						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="icon-bubble8"></i>
								<span class="visible-xs-inline-block position-right">Messages</span>
							</a>

							<div class="dropdown-menu dropdown-content width-350">
								<div class="dropdown-content-heading">
									Messages
									<ul class="icons-list">
										<li><a href="#"><i class="icon-menu7"></i></a></li>
									</ul>
								</div>

								<ul class="media-list dropdown-content-body">
									<li class="media">
										<div class="media-left">
											<img src="assets/images/placeholder.jpg" class="img-circle img-sm" alt="">
											<span class="badge bg-danger-400 media-badge">5</span>
										</div>

										<div class="media-body">
											<a href="#" class="media-heading">
												<span class="text-semibold">Andy</span>
												<span class="media-annotation pull-right">09:58</span>
											</a>

											<span class="text-muted">Do you want to discuss the plan...</span>
										</div>
									</li>

									<li class="media">
										<div class="media-left">
											<img src="assets/images/placeholder.jpg" class="img-circle img-sm" alt="">
											<span class="badge bg-danger-400 media-badge">4</span>
										</div>

										<div class="media-body">
											<a href="#" class="media-heading">
												<span class="text-semibold">Bridget Green</span>
												<span class="media-annotation pull-right">12:16</span>
											</a>

											<span class="text-muted">Do you want to go over the report...</span>
										</div>
									</li>

								</ul>
							</div>
						</li>

						<li class="dropdown dropdown-user">
							<a class="dropdown-toggle" data-toggle="dropdown">
								<img src="assets/images/placeholder.jpg" alt="">
								<span>Victor</span>
								<i class="caret"></i>
							</a>

							<ul class="dropdown-menu dropdown-menu-right">
								<li><a href="#"><i class="icon-user-plus"></i> My profile</a></li>
								<!-- <li><a href="#"><i class="icon-coins"></i> My balance</a></li> -->
								<li><a href="#"><!-- <span class="badge bg-blue pull-right">10</span> --> <i class="icon-comment-discussion"></i> Messages</a></li>
								<li class="divider"></li>
								<li><a href="#"><i class="icon-cog5"></i> Account settings</a></li>
								<li><a href="login_validation.html"><i class="icon-switch2"></i> Logout</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /main navbar -->


		<!-- Page header content -->
		<div class="page-header-content">
			<div class="page-title">
				<h4>Dashboard <small>Welcome, Victor!</small></h4>
			</div>

		</div>
		<!-- /page header content -->


		<!-- Second navbar -->
		<div class="navbar navbar-inverse navbar-transparent" id="navbar-second">
			<ul class="nav navbar-nav visible-xs-block">
				<li><a class="text-center collapsed" data-toggle="collapse" data-target="#navbar-second-toggle"><i class="icon-paragraph-justify3"></i></a></li>
			</ul>

			<div class="navbar-collapse collapse" id="navbar-second-toggle">
				<ul class="nav navbar-nav navbar-nav-material">
					<li class="active"><a href="index.html">Dashboard</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-nav-material">
					<li ><a href="clientSearch.html">Search</a></li>
				</ul>
			</div>
		</div>
		<!-- /second navbar -->


		<!-- Floating menu -->
		<ul class="fab-menu fab-menu-top-right" data-fab-toggle="click">
			<li>
				<a class="fab-menu-btn btn bg-pink-300 btn-float btn-rounded btn-icon">
					<i class="fab-icon-open icon-plus3"></i>
					<i class="fab-icon-close icon-cross2"></i>
				</a>

				<ul class="fab-menu-inner">
					<li>
						<div data-fab-label="Compose email">
							<a href="#" class="btn btn-default btn-rounded btn-icon btn-float">
								<i class="icon-pencil"></i>
							</a>
						</div>
					</li>
					<li>
						<div data-fab-label="Conversations">
							<a href="#" class="btn btn-default btn-rounded btn-icon btn-float">
								<i class="icon-bubbles7"></i>
							</a>
							<span class="badge bg-primary-400">5</span>
						</div>
					</li>
					<li>
						<div data-fab-label="Chat with Jack">
							<a href="#" class="btn bg-pink-400 btn-rounded btn-icon btn-float">
								<img src="assets/images/placeholder.jpg" class="img-responsive" alt="">
							</a>
							<span class="status-mark border-pink-400"></span>
						</div>
					</li>
				</ul>
			</li>
		</ul>
		<!-- /floating menu -->

	</div>
	<!-- /page header -->


	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main content -->
			<div class="content-wrapper">

                <!-- Choropleth map -->
                <div class="panel panel-flat">
                    <div class="panel-heading">
                        <h5 class="panel-title">Malware Global Distribution</h5>
                    </div>

                    <div class="panel-body">
                        <p class="content-group">The map shows the malware distribution across the globe within the pass week. The <code>darker</code> the country is, the more malware was downloaded from there.</p>

                        <div class="map-container map-choropleth"></div>
                    </div>
                </div>
                <!-- /choropleth map -->

				<!-- Main charts -->
				<div class="row">
					<div class="col-lg-6">

						<!-- Basic pie chart -->
						<div class="panel panel-flat">
							<div class="panel-heading">
								<h5 class="panel-title">File Type</h5>
							</div>

							<div class="panel-body">
								<div class="chart-container has-scroll">
									<div class="chart has-fixed-height has-minimum-width" id="basic_pie_type"></div>
								</div>
							</div>
						</div>
						<!-- /bacis pie chart -->

					</div>

					<div class="col-lg-6">
						<!-- Basic pie chart -->
						<div class="panel panel-flat">
							<div class="panel-heading">
								<h5 class="panel-title">Infections</h5>
							</div>

							<div class="panel-body">
								<div class="chart-container has-scroll">
									<div class="chart has-fixed-height has-minimum-width" id="basic_pie_protocol"></div>
								</div>
							</div>
						</div>
						<!-- /bacis pie chart -->
					</div>

				</div>
				<!-- /main charts -->

				<!-- sortable bar char -->
				<div class="row">
					<div class="col-lg-12">

					<!-- sortable vertical bar -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title">Top 10 User Agent</h5>
						</div>

						<div class="panel-body">
							<p class="content-group">They are displayed alphabetically, but you can <code>sort</code> them by values.</p>

							<div class="checkbox content-group">
								<label><input type="checkbox" class="toggle-sort"> Sort values</label>
							</div>

							<div class="chart-container">
								<div class="chart" id="d3-bar-sortable-vertical"></div>
							</div>
						</div>
					</div>
					<!-- /sortable vertical bar -->

					</div>
				</div>
				<!-- /sortable bar char -->

				<!-- IP list -->
				<div class="row">
					<div class="col-lg-12">
						<!-- IP list title-->
						<div class="panel panel-flat">
							<div class="panel-heading">
								<h5 class="panel-title">Hourly IP Detail List</h5>
								<div class="heading-elements">
									<!--<span class="label bg-success heading-text">28 active</span>-->
									<ul class="icons-list">
				                		<li class="dropdown">
				                			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-menu7"></i> <span class="caret"></span></a>
											<ul class="dropdown-menu dropdown-menu-right">
												<li><a href="#"><i class="icon-sync"></i> Update data</a></li>
											</ul>
				                		</li>
				                	</ul>
			                	</div>
							</div>
						<!-- /IP list title-->

						<!-- IP list table-->
						<div class="table-responsive">
							<table class="table text-nowrap">
								<thead>
									<tr>
										<th class="col-sm-1">Country</th>
										<th class="col-sm-1">state</th>
										<th class="col-md-3">IP</th>
										<th class="col-sm-2">Port</th>
										<th class="col-md-4">File Name</th>
										<th class="col-md-4">Infection Type</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>
											<div class="media-left media-middle">
												<a href="#"><img src="assets/images/flags/ru.png" class="img-circle img-xs" alt=""></a>
											</div>
											<div class="media-left media-middle">
												<div class=""><a href="#" class="text-default text-semibold">Russia</a></div>
											</div>
										</td>
										<td><span class="text-muted">Moscow</span></td>
										<td><span class="text-muted">129.98.212.123</span></td>
										<td><span class="text-success-600">35627</span></td>
										<td><h6 class="text-semibold">Cat Run(2011).EXE</h6></td>
										<td><span class="label bg-blue">Trojan</span></td>
										<td class="text-center">

										</td>
									</tr>

									<tr>
										<td>
											<div class="media-left media-middle">
												<a href="#"><img src="assets/images/flags/us.png" class="img-circle img-xs" alt=""></a>
											</div>
											<div class="media-left media-middle">
												<div class=""><a href="#" class="text-default text-semibold">United States</a></div>
											</div>
										</td>
										<td><span class="text-muted">Oregon</span></td>
										<td><span class="text-muted">198.80.19.231</span></td>
										<td><span class="text-success-600">29874</span></td>
										<td><h6 class="text-semibold">Furious 2013.EXE</h6></td>
										<td><span class="label bg-blue">Trojan</span></td>
										<td class="text-center">

										</td>
									</tr>

									<tr>
										<td>
											<div class="media-left media-middle">
												<a href="#"><img src="assets/images/flags/cn.png" class="img-circle img-xs" alt=""></a>
											</div>
											<div class="media-left media-middle">
												<div class=""><a href="#" class="text-default text-semibold">China</a></div>
											</div>
										</td>
										<td><span class="text-muted">Beijing</span></td>
										<td><span class="text-muted">89.29.81.211</span></td>
										<td><span class="text-success-600">23654</span></td>
										<td><h6 class="text-semibold">Tennis Game.EXE</h6></td>
										<td><span class="label bg-blue">Trojan</span></td>
										<td class="text-center">

										</td>
									</tr>

								</tbody>
							</table>
						</div>
						<!-- /IP list table-->
						</div>
					</div>

					<!-- message -->
					<!--<div class="col-lg-4">-->
						<!--<div class="panel panel-flat">-->
							<!--<div class="panel-heading">-->
								<!--<h5 class="panel-title">My messages</h5>-->
							<!--</div>-->

							<!--&lt;!&ndash; Tabs content &ndash;&gt;-->
							<!--<div class="tab-content">-->
								<!--<div class="tab-pane active fade in has-padding" id="messages-tue">-->
									<!--<ul class="media-list">-->
										<!--<li class="media">-->
											<!--<div class="media-left">-->
												<!--<img src="assets/images/placeholder.jpg" class="img-circle img-xs" alt="">-->
												<!--<span class="badge bg-danger-400 media-badge">8</span>-->
											<!--</div>-->

											<!--<div class="media-body">-->
												<!--<a href="#">-->
													<!--Andy-->
													<!--<span class="media-annotation pull-right">14:58</span>-->
												<!--</a>-->

												<!--<span class="display-block text-muted">The constitutionally inventoried precariously...</span>-->
											<!--</div>-->
										<!--</li>-->

										<!--<li class="media">-->
											<!--<div class="media-left">-->
												<!--<img src="assets/images/placeholder.jpg" class="img-circle img-xs" alt="">-->
												<!--<span class="badge bg-danger-400 media-badge">6</span>-->
											<!--</div>-->

											<!--<div class="media-body">-->
												<!--<a href="#">-->
													<!--Bridget Green-->
													<!--<span class="media-annotation pull-right">12:16</span>-->
												<!--</a>-->

												<!--<span class="display-block text-muted">Pinched a well more moral chose goodness...</span>-->
											<!--</div>-->
										<!--</li>-->

									<!--</ul>-->
								<!--</div>-->

							<!--</div>-->
						<!--</div>-->
					<!--</div>-->
					<!-- /message -->

				</div>
				<!-- /IP list -->

				<!-- /dashboard content -->

			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->

	</div>
	<!-- /page container -->


	<!-- Footer -->
	<div class="navbar navbar-default navbar-fixed-bottom footer">
		<ul class="nav navbar-nav visible-xs-block">
			<li><a class="text-center collapsed" data-toggle="collapse" data-target="#footer"><i class="icon-circle-up2"></i></a></li>
		</ul>

		<div class="navbar-collapse collapse" id="footer">
			<!-- <div class="navbar-text">
				&copy; 2015. <a href="#" class="navbar-link">Limitless Web App Kit</a> by <a href="http://themeforest.net/user/Kopyov" class="navbar-link" target="_blank">Eugene Kopyov</a>
			</div> -->

			<div class="navbar-text">
				&copy; 2016. <a href="www.tiversa.com" class="navbar-link">Tiversa</a> by <a href="http://www.ebusiness.cs.cmu.edu/" class="navbar-link" target="_blank">Carnegie Mellon Uniersity eBiz</a>
			</div>

			<div class="navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="#">About</a></li>
					<li><a href="#">Terms</a></li>
					<li><a href="http://tiversa.com/contact/">Contact</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- /footer -->

</body>
</html>
