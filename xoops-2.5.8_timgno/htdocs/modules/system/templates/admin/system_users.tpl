<{includeq file="db:system_header.tpl"}>

<{if $users_display == true}>
<!--Display form sort-->
<div class="xo-headercontent">
    <div class="pull-left"><{$form_sort}></div>
    <div class="pull-right">
        <div class="xo-buttons">
            <a class="btn btn-default" href="admin.php?fct=users&amp;op=users_synchronize&amp;status=2" title="<{$smarty.const._AM_SYSTEM_USERS_SYNCHRONIZE}>">
                <img src="<{xoAdminIcons reload.png}>" alt="<{$smarty.const._AM_SYSTEM_USERS_SYNCHRONIZE}>" />
                <{$smarty.const._AM_SYSTEM_USERS_SYNCHRONIZE}>
            </a>
            <a class="btn btn-default" href="admin.php?fct=users&amp;op=users_add" title="<{$smarty.const._AM_SYSTEM_USERS_ADDUSER}>">
                <img src="<{xoAdminIcons user_add.png}>" alt="<{$smarty.const._AM_SYSTEM_USERS_ADDUSER}>" />
                <{$smarty.const._AM_SYSTEM_USERS_ADDUSER}>
            </a>
        </div>
    </div>
</div>
<div class="clear">&nbsp;</div>
    <table id="xo-users-sorter" class="table table-striped tablesorter">
        <thead>
        <tr>
            <th class="text-center width3"><input type='checkbox' name='allbox' id='allbox' onclick='xoopsCheckAll("memberslist", "allbox");' value='Check All' /></th>
            <th class="text-center width5"><{$smarty.const._AM_SYSTEM_USERS_STATUS}></th>
            <th class="text-center"><{$smarty.const._AM_SYSTEM_USERS_UNAME}></th>
            <th class="text-center"><{$smarty.const._AM_SYSTEM_USERS_EMAIL}></th>
            <th class="text-center"><{$smarty.const._AM_SYSTEM_USERS_REG_DATE}></th>
            <th class="text-center"><{$smarty.const._AM_SYSTEM_USERS_LAST_LOGIN}></th>
            <th class="text-center"><{$smarty.const._AM_SYSTEM_USERS_POSTS}></th>
            <th class="text-center" width='11%'><{$smarty.const._AM_SYSTEM_USERS_ACTION}></th>
        </tr>
        </thead>
        <!--Display data-->
        <{if $users_count == true}>
        <form class="form-inline" name='memberslist' id='memberslist' action='<{$php_selft}>' method='POST'>
        <tbody>
        <{foreach item=users from=$users}>
        <tr class="<{cycle values='even,odd'}> alignmiddle">
            <td class="text-center"><{if $users.checkbox_user}><input type='checkbox' name='memberslist_id[]' id='memberslist_id[]' value='<{$users.uid}>' /><{/if}></td>
            <td class="text-center"><img class="xo-imgmini" src="<{$users.group}>" alt="" /></td>
            <td class="text-center"><a title="<{$users.uname}>" href="<{$xoops_url}>/userinfo.php?uid=<{$users.uid}>" ><{$users.uname}></a></td>
            <td class="text-center"><{$users.email}></td>
            <td class="text-center"><{$users.reg_date}></td>
            <td class="text-center"><{$users.last_login}></td>
            <td class="text-center"><div id="display_post_<{$users.uid}>"><{$users.posts}></div><div id='loading_<{$users.uid}>' class="text-center" style="display:none;"><img src="./images/mimetypes/spinner.gif" title="Loading" alt="Loading" width="12px"/></div></td>
            <td class="xo-actions text-center">
                <{if $users.user_level > 0}>
                <img onclick="display_post('<{$users.uid}>');" src="<{xoAdminIcons reload.png}>" alt="<{$smarty.const._AM_SYSTEM_USERS_SYNCHRONIZE}>" title="<{$smarty.const._AM_SYSTEM_USERS_SYNCHRONIZE}>" />
                <img onclick="display_dialog('<{$users.uid}>', true, true, 'slide', 'slide', 300, 400);" src="<{xoAdminIcons display.png}>" alt="<{$smarty.const._AM_SYSTEM_USERS_VIEW}>" title="<{$smarty.const._AM_SYSTEM_USERS_VIEW}>" />
                <a href="admin.php?fct=users&amp;op=users_edit&amp;uid=<{$users.uid}>" title="<{$smarty.const._AM_SYSTEM_USERS_EDIT}>">
                    <img src="<{xoAdminIcons user_edit.png}>" alt="<{$smarty.const._AM_SYSTEM_USERS_EDIT}>" />
                </a>
                <a href="admin.php?fct=users&amp;op=users_delete&amp;uid=<{$users.uid}>" title="<{$smarty.const._AM_SYSTEM_USERS_DEL}>">
                    <img src="<{xoAdminIcons user_delete.png}>" alt="<{$smarty.const._AM_SYSTEM_USERS_DEL}>" />
                </a>
                <{else}>
                <a href="admin.php?fct=users&amp;op=users_active&amp;uid=<{$users.uid}>" title="<{$smarty.const._AM_SYSTEM_USERS_ACTIVE}>">
                    <img src="<{xoAdminIcons xoops/active_user.png}>" alt="<{$smarty.const._AM_SYSTEM_USERS_ACTIVE}>" />
                </a>
                <img onclick="display_dialog('<{$users.uid}>', true, true, 'slide', 'slide', 300, 400);" src="<{xoAdminIcons display.png}>" alt="<{$smarty.const._AM_SYSTEM_USERS_VIEW}>" title="<{$smarty.const._AM_SYSTEM_USERS_VIEW}>" />
                <a href="admin.php?fct=users&amp;op=users_edit&amp;uid=<{$users.uid}>" title="<{$smarty.const._AM_SYSTEM_USERS_EDIT}>">
                    <img src="<{xoAdminIcons user_edit.png}>" alt="<{$smarty.const._AM_SYSTEM_USERS_EDIT}>" />
                </a>
                <a href="admin.php?fct=users&amp;op=users_delete&amp;uid=<{$users.uid}>" title="<{$smarty.const._AM_SYSTEM_USERS_DEL}>">
                    <img src="<{xoAdminIcons user_delete.png}>" alt="<{$smarty.const._AM_SYSTEM_USERS_DEL}>" />
                </a>
                <{/if}>
            </td>
        </tr>
        <{/foreach}>
        </tbody>
		<tbody>
        <tr>
            <td class="form-group" colspan='8'>				
				<select name='fct' onChange='changeDisplay (this.value, "groups", "edit_group")'>
					<option value=''>---------</option>
					<option value='mailusers'><{$smarty.const._AM_SYSTEM_USERS_SENDMAIL}></option>
					<option value='groups'><{$smarty.const._AM_SYSTEM_USERS_EDIT_GROUPS}></option>
					<option value='users'><{$smarty.const._AM_SYSTEM_USERS_DELETE}></option>
				</select>&nbsp;
				<select name='edit_group' id='edit_group' onChange='changeDisplay (this.value, this.value, "selgroups")' style="display:none;">
					<option value=''>---------</option>
					<option value='add_group'><{$smarty.const._AM_SYSTEM_USERS_ADD_GROUPS}></option>
					<option value='delete_group'><{$smarty.const._AM_SYSTEM_USERS_DELETE_GROUPS}></option>
				</select>
				<{$form_select_groups}>
				<input type="hidden" name="op" value="action_group">
				<input type='submit' name='Submit' class="btn btn-default" />
            </td>
        </tr>
		</tbody>
        </form>
        <{/if}>
        <!--No found-->
        <{if $users_no_found == true}>
        <tr class="<{cycle values='even,odd'}> alignmiddle">
            <td colspan='8' class="text-center"><{$smarty.const._AM_SYSTEM_USERS_NO_FOUND}></td>
        </tr>
        <{/if}>
    </table>
    <!--Pop-pup-->
    <{if $users_count == true}>
        <{foreach item=users from=$users_popup}>
            <div id="dialog<{$users.uid}>" title="<{$users.uname}>" style='display:none;'>
                <table>
                    <tbody>
						<tr>
							<td class="text-center">
								<img src="<{$users.user_avatar}>" alt="<{$users.uname}>" title="<{$users.uname}>" />
							</td>
							<td class="text-center">
								<a href='mailto:<{$users.email}>'><img src="<{xoAdminIcons mail_send.png}>" alt="" title=<{$smarty.const._AM_SYSTEM_USERS_EMAIL}> /></a>
								<a href='javascript:openWithSelfMain("<{$xoops_url}>/pmlite.php?send2=1&amp;to_userid=<{$users.uid}>","pmlite",450,370);'><img src="<{xoAdminIcons pm.png}>" alt="" title=<{$smarty.const._AM_SYSTEM_USERS_PM}> /></a>
								<a href='<{$users.url}>' rel='external'><img src="<{xoAdminIcons url.png}>" alt="" title=<{$smarty.const._AM_SYSTEM_USERS_URL}> ></a>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<ul style="border: 1px solid #666; padding: 8px;">
									<{if $users.user_name}><li><span class="bold"><{$smarty.const._AM_SYSTEM_USERS_NAME}></span>&nbsp;:&nbsp;<{$users.name}></li><{/if}>
									<li><span class="bold"><{$smarty.const._AM_SYSTEM_USERS_UNAME}></span>&nbsp;:&nbsp;<{$users.uname}></li>
									<li><span class="bold"><{$smarty.const._AM_SYSTEM_USERS_EMAIL}></span>&nbsp;:&nbsp;<{$users.email}></li>
									<{if $users.user_url}><li><span class="bold"><{$smarty.const._AM_SYSTEM_USERS_URL}></span>&nbsp;:&nbsp;<{$users.url}> </li><{/if}>
									<{if $users.user_icq}><li><span class="bold"><{$smarty.const._AM_SYSTEM_USERS_ICQ}></span>&nbsp;:&nbsp;<{$users.user_icq}></li><{/if}>
									<{if $users.user_aim}><li><span class="bold"><{$smarty.const._AM_SYSTEM_USERS_AIM}></span>&nbsp;:&nbsp;<{$users.user_aim}></li><{/if}>
									<{if $users.user_yim}><li><span class="bold"><{$smarty.const._AM_SYSTEM_USERS_YIM}></span>&nbsp;:&nbsp;<{$users.user_yim}></li><{/if}>
									<{if $users.user_msnm}><li><span class="bold"><{$smarty.const._AM_SYSTEM_USERS_MSNM}></span>&nbsp;:&nbsp;<{$users.user_msnm}> </li><{/if}>
								</ul>
							</td>
						</tr>
                    </tbody>
			   </table>
            </div>
        <{/foreach}>
    <{/if}>
    <!--Pop-pup-->
    <div class='text-right'><{$nav}></div>
<{/if}>
<br />
<!-- Display Avatar form (add,edit) -->
<{if $form}>
<div class="form-inline"><{$form}></div>
<{/if}>