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
 * @author          Taiwen Jiang <phppp@users.sourceforge.net>
 * @version         $Id: permissions.php 13016 2015-03-15 18:21:22Z timgno $
 */
include 'admin_header.php';
xoops_cp_header();
$indexAdmin = new ModuleAdmin();

$indexAdmin->addItemButton(_ADD . ' ' . _AM_PROFILE_CATEGORY, 'category.php?op=new', 'add', '');

echo $indexAdmin->addNavigation('category.php');
echo $indexAdmin->renderButton('right', '');

$op = isset($_REQUEST['op']) ? $_REQUEST['op'] : (isset($_REQUEST['id']) ? "edit" : 'list');

$handler =& xoops_getmodulehandler('category');
switch ($op) {
default:
case "list":
    $criteria = new CriteriaCompo();
    $criteria->setSort('cat_weight');
    $criteria->setOrder('ASC');
    $GLOBALS['xoopsTpl']->assign('categories', $handler->getObjects($criteria, true, false) );
    $template_main = "profile_admin_categorylist.tpl";
    break;

case "new":
    include_once '../include/forms.php';
    $obj =& $handler->create();
    $form = $obj->getForm();
    $form->display();
    break;

case "edit":
    include_once '../include/forms.php';
    $obj = $handler->get($_REQUEST['id']);
    $form = $obj->getForm();
    $form->display();
    break;

case "save":
    if ( !$GLOBALS['xoopsSecurity']->check()  ) {
        redirect_header('category.php', 3, implode(',', $GLOBALS['xoopsSecurity']->getErrors() ));
    }
    if ( isset($_REQUEST['id'])  ) {
        $obj =& $handler->get($_REQUEST['id']);
    } else {
        $obj =& $handler->create();
    }
    $obj->setVar('cat_title', $_REQUEST['cat_title']);
    $obj->setVar('cat_description', $_REQUEST['cat_description']);
    $obj->setVar('cat_weight', $_REQUEST['cat_weight']);
    if ( $handler->insert($obj)  ) {
        redirect_header('category.php', 3, sprintf(_AM_PROFILE_SAVEDSUCCESS, _AM_PROFILE_CATEGORY) );
    }
    include_once '../include/forms.php';
    echo $obj->getHtmlErrors();
    $form =& $obj->getForm();
    $form->display();
    break;

case "delete":
    $obj =& $handler->get($_REQUEST['id']);
    if ( isset($_REQUEST['ok']) && $_REQUEST['ok'] == 1 ) {
        if ( !$GLOBALS['xoopsSecurity']->check()  ) {
            redirect_header('category.php', 3, implode(',', $GLOBALS['xoopsSecurity']->getErrors() ));
        }
        if ( $handler->delete($obj)  ) {
            redirect_header('category.php', 3, sprintf(_AM_PROFILE_DELETEDSUCCESS, _AM_PROFILE_CATEGORY) );
        } else {
            echo $obj->getHtmlErrors();
        }
    } else {
        xoops_confirm(array('ok' => 1, 'id' => $_REQUEST['id'], 'op' => 'delete'), $_SERVER['REQUEST_URI'], sprintf(_AM_PROFILE_RUSUREDEL, $obj->getVar('cat_title') ));
    }
    break;
}
if ( isset($template_main)  ) {
    $GLOBALS['xoopsTpl']->display("db:{$template_main}");
}
include 'admin_footer.php';
