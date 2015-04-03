<!DOCTYPE html>
<html lang="en">
	<head>
		<{includeq file="$theme_tpl/theme_metas.tpl"}>
	</head>
	<body>
		<{includeq file="$theme_tpl/theme_header.tpl"}>
		<!-- Main -->
		<div class="container-fluid">  
			<!-- upper section -->
			<div class="row">
				<div class="sidenav col-sm-2">
					<{includeq file="$theme_tpl/theme_sidenav.tpl"}>
				</div><!-- /span-2 -->
				<div class="col-sm-10">      	
					<{includeq file="$theme_tpl/theme_page.tpl"}>
				</div><!--/col-span-10-->    
			</div><!--/row-->
			<!-- /upper section -->  
		</div><!--/container-fluid-->
		<!-- /Main -->
		<{includeq file="$theme_tpl/theme_footer.tpl"}>
	</body>
</html>