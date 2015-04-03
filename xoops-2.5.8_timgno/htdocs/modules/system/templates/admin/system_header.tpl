<{*
<{if $help_content}>
<div class="hide" id="xo-system-help">
<{includeq file="$help_content"}>
</div>
<{/if}>
*}>
<{if $xo_sys_tips}>
<div class="row">
    <img class="pull-left" src="<{xoAdminIcons tips.png}>" alt="<{$smarty.const._AM_SYSTEM_TIPS}>" title="<{$smarty.const._AM_SYSTEM_TIPS}>" />
    <div class="pull-left"><{$xo_sys_tips}></div>
    <div class="clear">&nbsp;</div>
</div>
<{else}>
<br />
<{/if}>