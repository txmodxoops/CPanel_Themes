<{if $breadcrumb}>
<{includeq file="db:system_header.tpl"}>
<{/if}>
<!--Preferences-->
<{if $menu}>
<div class="row row-preferences">
	<ul class="list-inline">
		<{foreach item=preferences from=$preferences}>
		<li class="box-icon text-center"><a class="thumbnail" href="admin.php?fct=preferences&amp;op=show&amp;confcat_id=<{$preferences.id}>" title="<{$preferences.name}>">
			<img class="img-rounded" src="<{$preferences.image}>" alt="<{$preferences.name}>" />
			<span><{$preferences.name}></span>
		</a></li>	
		<{/foreach}>	
		<li class="box-icon text-center"><a class="thumbnail" href="admin.php?fct=preferences&amp;op=showmod&amp;mod=1" title="<{$smarty.const._AM_SYSTEM_PREFERENCES_SETTINGS}>">
			<img class="img-rounded" src="<{xoAdminIcons xoops/system_mods.png}>" alt="<{$smarty.const._AM_SYSTEM_PREFERENCES_SETTINGS}>" />
			<span><{$smarty.const._AM_SYSTEM_PREFERENCES_SETTINGS}></span>
		</a></li>
	</ul>
</div>	
<{/if}>
<div class="clear">&nbsp;</div>