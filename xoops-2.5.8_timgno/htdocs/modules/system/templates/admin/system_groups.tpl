<!--groups-->
<{includeq file="db:system_header.tpl"}>
<{if $groups_count == true}>
<div class="pull-right">
    <div class="xo-buttons">
        <button class="btn btn-default" onclick="self.location.href='admin.php?fct=groups&amp;op=groups_add'">
            <img src="<{xoAdminIcons add.png}>" alt="<{$smarty.const._AM_SYSTEM_GROUPS_ADD}>" />
            <{$smarty.const._AM_SYSTEM_GROUPS_ADD}>
        </button>
    </div>
</div>
<table id="xo-group-sorter" class="table table-striped tablesorter">
    <thead>
	<tr>
		<th class="text-center width5"><{$smarty.const._AM_SYSTEM_GROUPS_ID}></th>
        <th class="text-center width20"><{$smarty.const._AM_SYSTEM_GROUPS_NAME}></th>
		<th class="text-center"><{$smarty.const._AM_SYSTEM_GROUPS_DESCRIPTION}></th>
		<th class="text-center"><{$smarty.const._AM_SYSTEM_GROUPS_NB_USERS_BY_GROUPS}></th>
		<th class="text-center width10"><{$smarty.const._AM_SYSTEM_GROUPS_ACTION}></th>
	</tr>
	</thead>
	<tbody>
	<{foreach item=groups from=$groups}>
	<tr class="<{cycle values='odd, even'}> alignmiddle">
		<td class="text-center"><{$groups.groups_id}></td>
        <td class="text-left">
            <a href="admin.php?fct=groups&amp;op=groups_edit&amp;groups_id=<{$groups.groups_id}>" title="<{$smarty.const._AM_SYSTEM_GROUPS_EDIT}>">
                <{$groups.name}>
            </a>
        </td>
		<td class="text-left"><{$groups.description}></td>
		<td class="text-center width25">
            <a href="./admin.php?fct=users&amp;selgroups=<{$groups.groups_id}>"><{$groups.nb_users_by_groups}></a>
        </td>
		<td class="xo-actions text-center">
			<a href="admin.php?fct=groups&amp;op=groups_edit&amp;groups_id=<{$groups.groups_id}>" title="<{$smarty.const._AM_SYSTEM_GROUPS_EDIT}>">
				<img src="<{xoAdminIcons edit.png}>" alt="<{$smarty.const._AM_SYSTEM_GROUPS_EDIT}>" />
			</a>
			<{if $groups.delete}>
			<a href="admin.php?fct=groups&amp;op=groups_delete&amp;groups_id=<{$groups.groups_id}>" title="<{$smarty.const._AM_SYSTEM_GROUPS_DELETE}>">
				<img src="<{xoAdminIcons delete.png}>" alt="<{$smarty.const._AM_SYSTEM_GROUPS_DELETE}>" />
			</a>
			<{/if}>
        </td>
	</tr>
	<{/foreach}>
	</tbody>
</table>
<!-- Display groups navigation -->
<div class="clear spacer"></div>
<{if $nav_menu}>
<div class="xo-avatar-pagenav pull-right"><{$nav_menu}></div><div class="clear spacer"></div>
<{/if}>
<{/if}>
<!-- Display groups form (add,edit) -->
<{if $form}>
<div class="form-inline"><{$form}></div>
<{/if}>