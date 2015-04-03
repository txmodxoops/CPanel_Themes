		<div id="page-wrapper">
            <{* Page Heading *}>
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><{$modname}></h3>
				</div>
			</div>
			<{if $xo_sys_breadcrumb}>
				<div class="row">
					<div class="col-lg-12">						
						<ol class="breadcrumb">	
						<{foreach item=breadcrumb from=$xo_sys_breadcrumb}>					
							<{if $breadcrumb.home}>
								<li class="breadcrumb-dashboard"><a href="<{$breadcrumb.link}>" title="<{$breadcrumb.title}>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
							<{elseif $breadcrumb.link}>
								<li class="breadcrumb-link"><a href="<{$breadcrumb.link}>" title="<{$breadcrumb.title}>"><{$breadcrumb.title}></a></li>
							<{else}>
								<li class="breadcrumb-title"><{$breadcrumb.title}></li>
							<{/if}>	
						<{/foreach}>					
						</ol>					
					</div>
				</div>
			<{/if}>
            <{* /.row *}>
            <{if $xoops_contents || $xo_system_menu}>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">						
						<div class="panel-body">                                
							<{* Display Admin menu *}>
							<{if $xo_system_menu}><{$xo_system_menu}><{/if}>
							<{$xoops_contents}>
						</div>
					</div>
				</div>
			</div>
			<{* /.row *}>
			<{/if}>
			<{if $modules}>
			<div class="row">
				<div class="col-lg-8">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title"><i class="fa fa-home fa-fw"></i> <{$lang_cp}></h3>
						</div>
						<div class="panel-body">
							<{includeq file="$theme_tpl/icons.html"}>							
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title"><i class="fa fa-user fa-fw"></i> Tasks Panel User</h3>
						</div>
						<div class="panel-body">
							<{includeq file="$theme_tpl/tabs.html"}>
							<div class="text-right">
								<a href="<{xoAppUrl modules/system/help.php?mid=1&page=users}>">View Help <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
				</div>                    
			</div>
			<{* /.row *}>
			<div class="row">
				<div class="col-lg-8">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title"><i class="fa fa-inbox fa-fw"></i> <{$smarty.const._OXYGEN_INSTALLEDMODULES}></h3>
						</div>
						<div class="panel-body">
							<{includeq file="$theme_tpl/modules.html"}>
							<div class="text-right">
								<a href="<{xoAppUrl modules/system/help.php?mid=1&page=modulesadmin}>">View Help <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title"><i class="fa fa-book fa-fw"></i> <{$smarty.const._MD_CPANEL_OVERVIEW}></h3>
						</div>
						<div class="panel-body">
							<{includeq file="$theme_tpl/accordion.html"}>
							<div class="text-right">
								<a href="<{xoAppUrl modules/system/help.php?mid=1&page=preferences}>">View Help <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
				</div>                    
			</div>
			<{/if}>
            <{* /.row *}>
        </div>
        <{* /#page-wrapper *}>