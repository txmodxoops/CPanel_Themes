		<!-- Header -->
		<nav id="top-nav" class="navbar navbar-inverse navbar-static-top" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">					
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<{xoAppUrl admin.php}>"><img src="<{xoImgUrl assets/img/logo.png}>" /></a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">        
						<li class="home"><a href="<{xoAppUrl /}>"><i class="glyphicon glyphicon-home"></i></a></li>
						<{foreach item=item from=$navitems}>
						<li class="dropdown">								
							<a href="<{$item.link}>" class="dropdown-toggle" title="<{$item.title}>" data-toggle="dropdown" data-hover="dropdown-menu"> <i class="glyphicon glyphicon-<{$item.icon}>"></i> <span class="caret"></span></a>
							<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdown-menu">
								<{foreach item=sub from=$item.menu}>
								<li tabindex="-1" class="dropdown-submenu">
									<{if $sub.options != 0}>
										<a class="submenu-after" tabindex="-1" href="<{$sub.link}>"> <{$sub.title}> </a>
										<ul class="dropdown-menu">
											<{foreach item=option from=$sub.options}>
											<li><a href="<{$sub.url}><{$option.link}>"><{$option.title}></a></li>
											<{/foreach}>
										</ul>
									<{else}>
										<a href="<{$sub.link}>" title="<{$sub.title}>"<{if $sub.target}> target="<{$sub.target}>"<{/if}>><{$sub.title}></a>
									<{/if}>
								</li>
								<{/foreach}>
							</ul>
						</li>
						<{/foreach}>
						<li id="choosestyle" class="dropdown">
							<a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" title="<{$smarty.const._OXYGEN_THEME_COLOR}>">
								<i class="glyphicon glyphicon-tint"></i> <span class="caret"></span>
							</a>
							<ul id="g-color-menu" class="dropdown-menu" role="menu">
								<li class="bg-color bg-dark"><a id="dark" href="<{$theme_css}>/index.html?style=dark" rel="dark" class="styleswitch"><{$smarty.const._OXYGEN_DARK}></a></li>
								<li class="bg-color bg-silver"><a id="silver" href="<{$theme_css}>/index.html?style=silver" rel="silver" class="styleswitch"><{$smarty.const._OXYGEN_SILVER}></a></li>
								<li class="bg-color bg-orange"><a id="orange" href="<{$theme_css}>/index.html?style=orange" rel="orange" class="styleswitch"><{$smarty.const._OXYGEN_ORANGE}></a></li>
								<li class="bg-color bg-red"><a id="red" href="<{$theme_css}>/index.html?style=red" rel="red" class="styleswitch"><{$smarty.const._OXYGEN_RED}></a></li>				
								<li class="bg-color bg-green"><a id="green" href="<{$theme_css}>/index.html?style=green" rel="green" class="styleswitch"><{$smarty.const._OXYGEN_GREEN}></a></li>
								<li class="bg-color bg-yellow"><a id="yellow" href="<{$theme_css}>/index.html?style=yellow" rel="yellow" class="styleswitch"><{$smarty.const._OXYGEN_YELLOW}></a></li>
								<li class="bg-color bg-blue"><a id="blue" href="<{$theme_css}>/index.html?style=blue" rel="blue" class="styleswitch"><{$smarty.const._OXYGEN_BLUE}></a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown">
								<img class="user-avatar" src="<{$xoops_avatar}>" alt="<{$xoops_uname}>"><{$xoops_uname}> <span class="caret"></span>
							<ul id="g-account-menu" class="dropdown-menu" role="menu">
								<li><a href="<{xoAppUrl modules/profile/index.php}>"><i class="glyphicon glyphicon-user"></i> Profile</a></li>
								<li><a href="<{xoAppUrl modules/system/admin.php?fct=users&op=users_edit&uid=1}>"><i class="glyphicon glyphicon-edit"></i> Edit</a></li>
								<li><a href="<{xoAppUrl modules/system/admin.php?fct=preferences&op=show&confcat_id=2}>"><i class="glyphicon glyphicon-cog"></i> Settings</a></li>
								<li><a href="<{xoAppUrl user.php?op=logout}>"><i class="glyphicon glyphicon-log-out"></i> <{$smarty.const._LOGOUT}></a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div><!-- /container -->
		</nav>
		<!-- /Header -->		