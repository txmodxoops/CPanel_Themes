<div id="xo-banner">
    <a id="xo-main-logo" href="<{xoAppUrl admin.php}>" title="<{$xoops_sitename}>">
		<img src="<{xoImgUrl img/xoops-logo.png}>" alt="<{$xoops_sitename}>" />
	</a>
	<div id="xo-version"><{$modname}></div>
	<!-- include blue to move banner -->
	<{if $theme_view_bluetomove}><{includeq file="$theme_tpl/xo_bluemove.html"}><{/if}>
    <!-- include userbar -->
    <{if $theme_view_userbar}><{includeq file="$theme_tpl/xo_userbar.html"}><{/if}>
    <!-- include searchbar -->
    <{if $theme_view_searchbar}><{includeq file="$theme_tpl/xo_searchbar.html"}><{/if}>
</div>