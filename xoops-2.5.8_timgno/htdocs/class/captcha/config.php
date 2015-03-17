<?php
/**
 * CAPTCHA configurations for All modes
 *
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting source code
 * which is considered copyrighted (c) material of the original comment or credit authors.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * @copyright       (c) 2000-2014 XOOPS Project (www.xoops.org)
 * @license         GNU GPL 2 (http://www.gnu.org/licenses/old-licenses/gpl-2.0.html)
 * @package         class
 * @subpackage      CAPTCHA
 * @since           2.3.0
 * @author          Taiwen Jiang <phppp@users.sourceforge.net>
 * @version         $Id: config.php 12666 2014-06-30 10:02:07Z beckmi $
 */

defined('XOOPS_ROOT_PATH') || die('Restricted access');

/**
 * This keeping config in files has really got to stop. If we can't actually put these into
 * the actual XOOPS config then we should do this. (Who said this? You are right!)
 */
return $config = array(
    'disabled' => $GLOBALS['xoopsModuleConfig']['captcha_disabled'],  // Disable CAPTCHA false
    'mode' =>  $GLOBALS['xoopsModuleConfig']['captcha_mode'],  // default mode, you can choose 'text', 'image', 'recaptcha'(requires api key)
    'name' => $GLOBALS['xoopsModuleConfig']['captcha_name'],  // default captcha name xoopscaptcha
    'skipmember' => $GLOBALS['xoopsModuleConfig']['captcha_skipmember'],  // Skip CAPTCHA check for members true
    'maxattempts' => $GLOBALS['xoopsModuleConfig']['captcha_maxattempts'],  // Maximum attempts for each session default 10
);
