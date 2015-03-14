<?php
/**
 * XOOPS form element
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
 * @package         kernel
 * @subpackage      form
 * @since           2.0.0
 * @author          Kazumi Ono (AKA onokazu) http://www.myweb.ne.jp/, http://jp.xoops.org/
 * @version         $Id: formtextdateselect.php 12537 2014-05-19 14:19:33Z beckmi $
 */

defined('XOOPS_ROOT_PATH') ||  die("XOOPS root path not defined");

/**
 * A text field with calendar popup
 */

class XoopsFormTextDateSelect extends XoopsFormText
{

    /**
     * @param     $caption
     * @param     $name
     * @param int $size
     * @param int $value
     */
    function XoopsFormTextDateSelect($caption, $name, $size = 15, $value = 0)
    {
        $value = !is_numeric($value) ? time() : intval($value);
        $value = ($value == 0) ? time() : $value;
        $this->XoopsFormText($caption, $name, $size, 25, $value);
    }

    /**
     * @return string
     */
    function render()
    {
        static $included = false;
        $ele_name = $this->getName();
        $ele_value = $this->getValue(false);
        if (is_string($ele_value)) {
            $display_value = formatTimestamp($ele_value, _SHORTDATESTRING);
            $ele_value = time();
        } else {
            $display_value = date(_SHORTDATESTRING, $ele_value);
        }

        if (is_object($GLOBALS['xoTheme'])) {
            if (!$included) {
                $included = true;
                $GLOBALS['xoTheme']->addScript('','', '
                    $(function() {						
						$.datepicker.setDefaults( $.extend($.datepicker.regional["'. _LANGCODE .'"]) );
						$( ".datepicker" ).datepicker({
							showOn: "button",
							buttonImage: "'.XOOPS_URL.'/images/calendar.png",
							buttonImageOnly: true,
							buttonText: "Select date",
							showWeek: true,
							firstDay: 1,
							showButtonPanel: true,
							showOtherMonths: true,
							selectOtherMonths: true
						})
					});
                ');
            }
        }
        return "<input type='text' name='" . $ele_name . "' class='form-control datepicker' size='" . $this->getSize() . "' value=''" . $this->getExtra() . " />";
    }
}