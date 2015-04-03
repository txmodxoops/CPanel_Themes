<{includeq file="db:system_header.tpl"}>
<!--Banner-->
<table class='table table-striped'>
	<tbody>
		<tr>
			<{if $banner_count == true}>
			<td>
				<h4><{$smarty.const._AM_SYSTEM_BANNERS_CURACTBNR}></h4>
			</td>
			<{/if}>
			<td>
				<div class="pull-right">
					<div class="xo-buttons">
						<a class="ui-corner-all btn" href="admin.php?fct=banners&amp;op=new_banner" title="<{$smarty.const._AM_SYSTEM_BANNERS_ADDNWBNR}>">
							<img src="<{xoAdminIcons attach.png}>" alt="<{$smarty.const._AM_SYSTEM_BANNERS_ADDNWBNR}>" />
							<{$smarty.const._AM_SYSTEM_BANNERS_ADDNWBNR}>
						</a>
						<a class="ui-corner-all btn" href="admin.php?fct=banners&amp;op=new_client" title="<{$smarty.const._AM_SYSTEM_BANNERS_ADDCLI}>">
							<img src="<{xoAdminIcons user_add.png}>" alt="<{$smarty.const._AM_SYSTEM_BANNERS_ADDCLI}>" />
							<{$smarty.const._AM_SYSTEM_BANNERS_ADDCLI}>
						</a>
					</div>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<{if $banner_count == true}>
<table id="xo-bannerslist-sorter" class="table table-striped">
    <thead>
		<tr>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_IMPRESION}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_IMPLEFT}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_CLICKS}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_NCLICKS}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_CLINAME}></th>
			<th class="text-center width10"><{$smarty.const._AM_SYSTEM_BANNERS_FUNCTION}></th>
		</tr>
	</thead>
	<tbody>
		<{foreach item=banner from=$banner}>
		<tr class="<{cycle values='even,odd'}>">
			<td class="text-center"><{$banner.impmade}></td>
			<td class="text-center"><{$banner.left}></td>
			<td class="text-center"><{$banner.clicks}></td>
			<td class="text-center"><{$banner.percent}>%</td>
			<td class="text-center"><{$banner.name}></td>
			<td class="xo-actions text-center">
				<img onclick="display_dialog(<{$banner.bid}>, true, true, 'slide', 'slide', 200, 520);" src="<{xoAdminIcons display.png}>" alt="<{$smarty.const._AM_SYSTEM_BANNERS_VIEW}>" title="<{$smarty.const._AM_SYSTEM_BANNERS_VIEW}>" />
				<a href="admin.php?fct=banners&amp;op=banner_edit&amp;bid=<{$banner.bid}>" title="<{$smarty.const._AM_SYSTEM_BANNERS_EDIT}>">
					<img src="<{xoAdminIcons edit.png}>" alt="<{$smarty.const._AM_SYSTEM_BANNERS_EDIT}>" />
				</a>
				<a href="admin.php?fct=banners&amp;op=banner_delete&amp;bid=<{$banner.bid}>" title="<{$smarty.const._AM_SYSTEM_BANNERS_DELETE}>">
					<img src="<{xoAdminIcons delete.png}>" alt="<{$smarty.const._AM_SYSTEM_BANNERS_DELETE}>" />
				</a>
			</td>
		</tr>
		<{/foreach}>
	</tbody>
</table>
<div class="clear spacer"></div>
<{if $nav_menu_banner}>
<div class="xo-avatar-pagenav pull-right"><{$nav_menu_banner}></div><div class="clear spacer"></div>
<{/if}>
<!--Pop-pup-->
<{foreach item=banner from=$popup_banner}>
<div id="dialog<{$banner.bid}>" title="<{$banner.name}>" style='display:none;'>
	<{$banner.imageurl}>
</div>
<{/foreach}>
<!--Pop-pup-->
<{/if}>

<!--Banner Finish-->
<{if $banner_finish_count == true}>
<h4><{$smarty.const._AM_SYSTEM_BANNERS_FINISHBNR}></h4>
<table id="xo-bannersfinish-sorter" class="table table-striped">
    <thead>
		<tr>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_IMPD}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_CLICKS}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_NCLICKS}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_STARTDATE}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_ENDDATE}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_CLINAME}></th>
			<th class="text-center width10"><{$smarty.const._AM_SYSTEM_BANNERS_FUNCTION}></th>
		</tr>
	</thead>
	<tbody>
		<{foreach item=banner_finish from=$banner_finish}>
		<tr class="<{cycle values='even,odd'}>">
			<td class="text-center"><{$banner_finish.impressions}></td>
			<td class="text-center"><{$banner_finish.clicks}></td>
			<td class="text-center"><{$banner_finish.percent}>%</td>
			<td class="text-center"><{$banner_finish.datestart}></td>
			<td class="text-center"><{$banner_finish.dateend}></td>
			<td class="text-center"><{$banner_finish.name}></td>
			<td class="xo-actions text-center">
				<a href="admin.php?fct=banners&amp;op=banner_finish_delete&amp;bid=<{$banner_finish.bid}>" title="<{$smarty.const._AM_SYSTEM_BANNERS_DELETE}>">
					<img src="<{xoAdminIcons delete.png}>" alt="<{$smarty.const._AM_SYSTEM_BANNERS_DELETE}>" />
				</a>
			</td>
		</tr>
		<{/foreach}>
	</tbody>
</table>
<div class="clear spacer"></div>
<{if $nav_menu_bannerF}>
<div class="xo-avatar-pagenav pull-right"><{$nav_menu_bannerF}></div>
<div class="clear spacer"></div>
<{/if}>

<{/if}>
<!--Banner Client-->
<{if $banner_client_count == true}>
<h4><{$smarty.const._AM_SYSTEM_BANNERS_ADVCLI}></h4>
<table id="xo-bannersclient-sorter" class="table table-striped">
    <thead>
		<tr>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_CLINAME}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_ACTIVEBNR}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_CONTNAME}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_BANNERS_CONTMAIL}></th>
			<th class="text-center width10"><{$smarty.const._AM_SYSTEM_BANNERS_FUNCTION}></th>
		</tr>
	</thead>
	<tbody>
		<{foreach item=banner_client from=$banner_client}>
		<tr class="<{cycle values='even,odd'}>">
			<td class="text-center"><{$banner_client.name}></td>
			<td class="text-center"><{$banner_client.banner_active}></td>
			<td class="text-center"><{$banner_client.contact}></td>
			<td class="text-center"><{$banner_client.email}></td>
			<td class="xo-actions text-center">
				<a href="admin.php?fct=banners&amp;op=banner_client_edit&amp;cid=<{$banner_client.cid}>" title="<{$smarty.const._AM_SYSTEM_BANNERS_EDIT}>">
					<img src="<{xoAdminIcons edit.png}>" alt="<{$smarty.const._AM_SYSTEM_BANNERS_EDIT}>" />
				</a>
				<a href="admin.php?fct=banners&amp;op=banner_client_delete&amp;cid=<{$banner_client.cid}>" title="<{$smarty.const._AM_SYSTEM_BANNERS_DELETE}>">
					<img src="<{xoAdminIcons delete.png}>" alt="<{$smarty.const._AM_SYSTEM_BANNERS_DELETE}>" />
				</a>
			</td>
		</tr>
		<{/foreach}>
	</tbody>
</table>
<div class="clear spacer"></div>
<{if $nav_menu_client}>
<div class="pagination"><{$nav_menu_client}></div>
<div class="clear spacer"></div>
<{/if}>
<{/if}>
<br />
<!-- Display Avatar form (add,edit) -->
<{if $form}>
<div class="form-inline"><{$form}></div>
<{/if}>
