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
 * @version         $Id: index.php 13016 2015-03-15 18:21:22Z timgno $
 */

include_once 'admin_header.php';
xoops_cp_header();

$indexAdmin = new ModuleAdmin();
//-----------------------
// $xpPartnerHandler =& xoops_getmodulehandler('partners', $xoopsModule->getVar('dirname'));

// $totalPartners = $xpPartnerHandler->getCount();
// $totalNonActivePartners = $xpPartnerHandler->getCount(new Criteria('status', 0, '='));
// $totalActivePartners = $totalPartners - $totalNonActivePartners;

// $indexAdmin->addInfoBox(_MA_PROFILE_DASHBOARD);

// $indexAdmin->addInfoBoxLine(_MA_PROFILE_DASHBOARD, "<infolabel>" ._MA_PROFILE_TOTALACTIVE. "</infolabel>", $totalActivePartners, 'Green');
// $indexAdmin->addInfoBoxLine(_MA_PROFILE_DASHBOARD,  "<infolabel>" ._MA_PROFILE_TOTALNONACTIVE. "</infolabel>", $totalNonActivePartners, 'Red');
// $indexAdmin->addInfoBoxLine(_MA_PROFILE_DASHBOARD,  "<infolabel>" ._MA_PROFILE_TOTALPARTNERS. "</infolabel><infotext>", $totalPartners."</infotext>");
//----------------------------

echo $indexAdmin->addNavigation('index.php');
echo $indexAdmin->renderIndex();

include 'admin_footer.php';