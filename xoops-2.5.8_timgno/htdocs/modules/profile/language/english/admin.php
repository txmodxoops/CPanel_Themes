<?php
/**
 * Extended User Profile
 *
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting source code
 * which is considered copyrighted (c) material of the original comment or credit authors.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * @copyright       The XOOPS Project http://sourceforge.net/projects/xoops/
 * @license         GNU GPL 2 (http://www.gnu.org/licenses/old-licenses/gpl-2.0.html)
 * @package         profile
 * @since           2.3.0
 * @author          Jan Pedersen
 * @version         $Id: admin.php 13016 2015-03-15 18:21:22Z timgno $
 */
// _LANGCODE: en
// _CHARSET : UTF-8
define('_AM_PROFILE_FIELD',"Field");
define('_AM_PROFILE_FIELDS',"Fields");
define('_AM_PROFILE_CATEGORY',"Category");
define('_AM_PROFILE_STEP',"Step");
define('_AM_PROFILE_SAVEDSUCCESS',"%s saved successfully");
define('_AM_PROFILE_DELETEDSUCCESS',"%s deleted successfully");
define('_AM_PROFILE_RUSUREDEL',"Are you sure you want to delete %s");
define('_AM_PROFILE_FIELDNOTCONFIGURABLE',"The field is not configurable.");
define('_AM_PROFILE_ADD',"Add %s");
define('_AM_PROFILE_EDIT',"Edit %s");
define('_AM_PROFILE_TYPE',"Field Type");
define('_AM_PROFILE_VALUETYPE',"Value Type");
define('_AM_PROFILE_NAME',"Name");
define('_AM_PROFILE_TITLE',"Title");
define('_AM_PROFILE_DESCRIPTION',"Description");
define('_AM_PROFILE_REQUIRED',"Required?");
define('_AM_PROFILE_MAXLENGTH',"Maximum Length");
define('_AM_PROFILE_WEIGHT',"Weight");
define('_AM_PROFILE_DEFAULT',"Default");
define('_AM_PROFILE_NOTNULL',"Not Null?");
define('_AM_PROFILE_ARRAY',"Array");
define('_AM_PROFILE_EMAIL',"Email");
define('_AM_PROFILE_INT',"Integer");
define('_AM_PROFILE_TXTAREA',"Text Area");
define('_AM_PROFILE_TXTBOX',"Text field");
define('_AM_PROFILE_URL',"URL");
define('_AM_PROFILE_OTHER',"Other");
define('_AM_PROFILE_FLOAT',"Floating Point");
define('_AM_PROFILE_DECIMAL',"Decimal Number");
define('_AM_PROFILE_UNICODE_ARRAY',"Unicode Array");
define('_AM_PROFILE_UNICODE_EMAIL',"Unicode Email");
define('_AM_PROFILE_UNICODE_TXTAREA',"Unicode Text Area");
define('_AM_PROFILE_UNICODE_TXTBOX',"Unicode Text field");
define('_AM_PROFILE_UNICODE_URL',"Unicode URL");
define('_AM_PROFILE_PROF_VISIBLE_ON',"Field visible on these groups' profile");
define('_AM_PROFILE_PROF_VISIBLE_FOR',"Field visible on profile for these groups");
define('_AM_PROFILE_PROF_VISIBLE',"Visibility");
define('_AM_PROFILE_PROF_EDITABLE',"Field editable from profile");
define('_AM_PROFILE_PROF_REGISTER',"Show in registration form");
define('_AM_PROFILE_PROF_SEARCH',"Searchable by these groups");
define('_AM_PROFILE_PROF_ACCESS',"Profile accessible by these groups");
define('_AM_PROFILE_PROF_ACCESS_DESC',
        "<ul>" .
        "<li>Admin groups: If a user belongs to admin groups, the current user has access if and only if one of the current user's groups is allowed to access admin group; else</li>" .
        "<li>Non basic groups: If a user belongs to one or more non basic groups (NOT admin, user, anonymous), the current user has access if and only if one of the current user's groups is allowed to allowed to any of the non basic groups; else</li>" .
        "<li>User group: If a user belongs to User group only, the current user has access if and only if one of his groups is allowed to access User group</li>" .
        "</ul>");
define('_AM_PROFILE_FIELDVISIBLE',"The field ");
define('_AM_PROFILE_FIELDVISIBLEFOR'," is visible for ");
define('_AM_PROFILE_FIELDVISIBLEON'," viewing a profile of ");
define('_AM_PROFILE_FIELDVISIBLETOALL',"- Everyone");
define('_AM_PROFILE_FIELDNOTVISIBLE',"is not visible");
define('_AM_PROFILE_CHECKBOX',"Checkbox");
define('_AM_PROFILE_GROUP',"Group Select");
define('_AM_PROFILE_GROUPMULTI',"Group Multi Select");
define('_AM_PROFILE_LANGUAGE',"Language Select");
define('_AM_PROFILE_RADIO',"Radio Buttons");
define('_AM_PROFILE_SELECT',"Select");
define('_AM_PROFILE_SELECTMULTI',"Multi Select");
define('_AM_PROFILE_TEXTAREA',"Text Area");
define('_AM_PROFILE_DHTMLTEXTAREA',"DHTML Text Area");
define('_AM_PROFILE_TEXTBOX',"Text Field");
define('_AM_PROFILE_TIMEZONE',"Time zone");
define('_AM_PROFILE_YESNO',"Radio Yes/No");
define('_AM_PROFILE_DATE',"Date");
define('_AM_PROFILE_AUTOTEXT',"Auto Text");
define('_AM_PROFILE_DATETIME',"Date and Time");
define('_AM_PROFILE_LONGDATE',"Long Date");
define('_AM_PROFILE_ADDOPTION',"Add Option");
define('_AM_PROFILE_REMOVEOPTIONS',"Remove Options");
define('_AM_PROFILE_KEY',"Value to be stored");
define('_AM_PROFILE_VALUE',"Text to be displayed");
// User management
define('_AM_PROFILE_EDITUSER',"Edit User");
define('_AM_PROFILE_SELECTUSER',"Select User");
define('_AM_PROFILE_ADDUSER',"Add User");
define('_AM_PROFILE_THEME',"Theme");
define('_AM_PROFILE_RANK',"Rank");
define('_AM_PROFILE_USERDONEXIT',"User doesn't exist!");
define('_PROFILE_MA_USERLEVEL',"User Level");
define('_PROFILE_MA_ACTIVE',"Active");
define('_PROFILE_MA_INACTIVE',"Inactive");
define('_AM_PROFILE_USERCREATED',"User Created");
define('_AM_PROFILE_CANNOTDELETESELF',"Deleting your own account is not allowed - use your profile page to delete your own account");
define('_AM_PROFILE_CANNOTDELETEADMIN',"Deleting an administrator account is not allowed");
define('_AM_PROFILE_NOSELECTION',"No user selected");
define('_AM_PROFILE_USER_ACTIVATED',"User activated");
define('_AM_PROFILE_USER_DEACTIVATED',"User deactivated");
define('_AM_PROFILE_USER_NOT_ACTIVATED',"Error: User NOT activated");
define('_AM_PROFILE_USER_NOT_DEACTIVATED',"Error: User NOT deactivated");
define('_AM_PROFILE_STEPNAME',"Step name");
define('_AM_PROFILE_STEPORDER',"Step order");
define('_AM_PROFILE_STEPSAVE',"Save after step");
define('_AM_PROFILE_STEPINTRO',"Step description");
//1.62
define('_AM_PROFILE_ACTION','Action');
//1.63
define('_AM_PROFILE_REQUIRED_TOGGLE','Toggle Required Field');
define('_AM_PROFILE_REQUIRED_TOGGLE_SUCCESS','Successfully Changed Required Field ');
define('_AM_PROFILE_REQUIRED_TOGGLE_FAILED','Changing Required Field Failed');
define('_AM_PROFILE_SAVESTEP_TOGGLE','Toggle Save');
define('_AM_PROFILE_SAVESTEP_TOGGLE_SUCCESS','Successfully Changed Save After Step');
define('_AM_PROFILE_SAVESTEP_TOGGLE_FAILED',"Changing 'Save After Step' Failed");
