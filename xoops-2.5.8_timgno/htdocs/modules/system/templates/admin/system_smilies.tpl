<!--smilies-->
<{includeq file="db:system_header.tpl"}>
<script type="text/javascript">
    IMG_ON = '<{xoAdminIcons success.png}>';
    IMG_OFF = '<{xoAdminIcons cancel.png}>';
</script>
<{if $smilies_count == true}>
<div class="pull-right">
    <div class="xo-buttons">
        <a class="btn btn-default" href="admin.php?fct=smilies&amp;op=new_smilie" title="<{$smarty.const._AM_SYSTEM_SMILIES_ADD}>">
            <img src="<{xoAdminIcons add.png}>" alt="<{$smarty.const._AM_SYSTEM_SMILIES_ADD}>" />
            <{$smarty.const._AM_SYSTEM_SMILIES_ADD}>
        </a>
    </div>
</div>
<table id="xo-smilies-sorter" class="table table-striped tablesorter">
    <thead>
		<tr>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_SMILIES_CODE}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_SMILIES_SMILIE}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_SMILIES_DESCRIPTION}></th>
			<th class="text-center"><{$smarty.const._AM_SYSTEM_SMILIES_DISPLAY}></th>
			<th class="text-center width10"><{$smarty.const._AM_SYSTEM_SMILIES_ACTION}></th>
		</tr>
	</thead>
	<tbody>
	<{foreach item=smilies from=$smilies}>
		<tr class="<{cycle values='even,odd'}> alignmiddle">
			<td class="text-center width5"><{$smilies.code}></td>
			<td class="text-center width5"><{$smilies.image}></td>
			<td class="text-center width50"><{$smilies.emotion}></td>
			<td class="xo-actions text-center width10">
				<img id="loading_sml<{$smilies.smilies_id}>" src="images/spinner.gif" style="display:none;" title="<{$smarty.const._AM_SYSTEM_LOADING}>" alt="<{$smarty.const._AM_SYSTEM_LOADING}>" /><img class="cursorpointer" id="sml<{$smilies.smilies_id}>" onclick="system_setStatus( { fct: 'smilies', op: 'smilies_update_display', smilies_id: <{$smilies.smilies_id}> }, 'sml<{$smilies.smilies_id}>', 'admin.php' )" src="<{if $smilies.display}><{xoAdminIcons success.png}><{else}><{xoAdminIcons cancel.png}><{/if}>" alt="<{if $smilies.display}><{$smarty.const._AM_SYSTEM_SMILIES_OFF}><{else}><{$smarty.const._AM_SYSTEM_SMILIES_ON}><{/if}>" title="<{if $smilies.display}><{$smarty.const._AM_SYSTEM_SMILIES_OFF}><{else}><{$smarty.const._AM_SYSTEM_SMILIES_ON}><{/if}>" />
			</td>
			<td class="xo-actions text-center width10">
				<a href="admin.php?fct=smilies&amp;op=edit_smilie&amp;smilies_id=<{$smilies.smilies_id}>" title="<{$smarty.const._AM_SYSTEM_SMILIES_EDIT}>">
					<img src="<{xoAdminIcons edit.png}>" alt="<{$smarty.const._AM_SYSTEM_SMILIES_EDIT}>" />
				</a>
				<a href="admin.php?fct=smilies&amp;op=smilies_delete&amp;smilies_id=<{$smilies.smilies_id}>" title="<{$smarty.const._AM_SYSTEM_SMILIES_DELETE}>">
					<img src="<{xoAdminIcons delete.png}>" alt="<{$smarty.const._AM_SYSTEM_SMILIES_DELETE}>" />
				</a>
			</td>
		</tr>
	<{/foreach}>
	</tbody>
</table>
<!-- Display smilies navigation -->
<div class="clear spacer"></div>
<{if $nav_menu}>
<div class="xo-avatar-pagenav pull-right"><{$nav_menu}></div>
<div class="clear spacer"></div>
<{/if}>
<{/if}>
<!-- Display smilies form (add,edit) -->
<{if $form}>
<div class="form-inline"><{$form}></div>
<{/if}>