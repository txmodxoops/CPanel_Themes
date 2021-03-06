<?php
/**
 * Class for tab navigation
 *
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting source code
 * which is considered copyrighted (c) material of the original comment or credit authors.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * @copyright   The XOOPS Project http://sourceforge.net/projects/xoops/
 * @license     GNU GPL 2 (http://www.gnu.org/licenses/old-licenses/gpl-2.0.html)
 * @author      John Neill (AKA Catzwolf)
 * @author      Andricq Nicolas (AKA MusS)
 * @version     $Id: menu.php 12360 2014-03-08 09:46:59Z beckmi $
 */

defined( 'XOOPS_ROOT_PATH' ) or die();

/**
 * Class SystemMenuHandler
 */
class SystemMenuHandler
{
    /**
     *
     * @var string
     */
    var $_menutop = array();
    var $_menutabs = array();
    var $_obj;
    var $_header;
    var $_subheader;

    /**
     * Constructor
     */
    function __construct()
    {
        global $xoopsModule;
        $this->_obj =& $xoopsModule;
    }

    /**
     * @param $addon
     */
    function getAddon($addon)
    {
        $this->_obj =& $addon;
    }

    /**
     * @param        $value
     * @param string $name
     */
    function addMenuTop($value, $name = "")
    {
        if ($name != "") {
            $this->_menutop[$value] = $name;
        } else {
            $this->_menutop[$value] = $value;
        }
    }

    /**
     * @param      $options
     * @param bool $multi
     */
    function addMenuTopArray($options, $multi = true)
    {
        if (is_array($options)) {
            if ($multi == true) {
                foreach ($options as $k => $v) {
                    $this->addOptionTop($k, $v);
                }
            } else {
                foreach ($options as $k) {
                    $this->addOptiontop($k, $k);
                }
            }
        }
    }

    /**
     * @param        $value
     * @param string $name
     */
    function addMenuTabs($value, $name = "")
    {
        if ($name != "") {
            $this->_menutabs[$value] = $name;
        } else {
            $this->_menutabs[$value] = $value;
        }
    }

    /**
     * @param      $options
     * @param bool $multi
     */
    function addMenuTabsArray($options, $multi = true)
    {
        if (is_array($options)) {
            if ($multi == true) {
                foreach ($options as $k => $v) {
                    $this->addMenuTabsTop($k, $v);
                }
            } else {
                foreach ($options as $k) {
                    $this->addMenuTabsTop($k, $k);
                }
            }
        }
    }

    /**
     * @param $value
     */
    function addHeader($value)
    {
        $this->_header = $value;
    }

    /**
     * @param $value
     */
    function addSubHeader($value)
    {
        $this->_subheader = $value;
    }

    /**
     * @param string $basename
     *
     * @return string
     */
    function breadcrumb_nav($basename = "Home")
    {
        global $bc_site, $bc_label;
        $site = $bc_site;
        $return_str = "<a href=\"/\">$basename</a>";
        $str = substr(dirname( xoops_getenv('PHP_SELF')), 1);

        $arr = explode('/', $str);
        $num = count($arr);

        if ($num > 1) {
            foreach ($arr as $val) {
                $return_str .= ' &gt; <a href="' . $site . $val . '/">' . $bc_label[$val] . '</a>';
                $site .= $val . '/';
            }
        } else if ($num == 1) {
            $arr = $str;
            $return_str .= ' &gt; <a href="' . $bc_site . $arr . '/">' . $bc_label[$arr] . '</a>';
        }

        return $return_str;
    }

    /**
     * @param int  $currentoption
     * @param bool $display
     *
     * @return string
     */
    function render($currentoption = 1, $display = true)
    {
        global $modversion;
        $_dirname = $this->_obj->getVar('dirname');
        $i = 0;

        /**
         * Selects current menu tab
         */
        foreach ($this->_menutabs as $k => $menus) {
            $menuItems[] = $menus;
        }
        $breadcrumb = $menuItems[$currentoption];
        $menuItems[$currentoption] = 'current';
        $menu = "<div id='buttontop'>";
        $menu .= "<table class=\"table table-bordered\">\n<tr>";
        $menu .= "<td><ul class=\"nav nav-pills\">";
        foreach ($this->_menutop as $k => $v) {
            $menu .= "<li role=\"presentation\"><a href=\"$k\">$v</a>";
        }
        $menu = substr($menu, 0, -1);

        $menu .= "</ul></td>";
        $menu .= "<td style='text-align: right; padding-top: 18px;'><strong>" . $this->_obj->getVar( 'name' ) . "</strong> : " . $breadcrumb . "</td>";
        $menu .= "</tr>\n</table>\n";
        $menu .= "</div>\n";
        $menu .= "<ul class=\"nav nav-tabs nav-module\">";
        foreach ($this->_menutabs as $k => $v) {
            $menu .= "<li id='" . $menuItems[$i] . "' role=\"presentation\"><a href='" . XOOPS_URL . "/modules/" . $this->_obj->getVar( 'dirname' ) . "/" . $k . "'><span>$v</span></a></li>\n";
            $i++;
        }
        $menu .= "</ul>\n";
        if ($this->_header) {
            $menu .= "<h4 class='admin_header'>";
            if (isset( $modversion['name'])) {
                if ($modversion['image'] && $this->_obj->getVar( 'mid' ) == 1) {
                    $system_image = XOOPS_URL . '/modules/system/images/system/' . $modversion['image'];
                } else {
                    $system_image = XOOPS_URL . '/modules/' . $_dirname . '/images/' . $modversion['image'];
                }
                $menu .= "<img src='$system_image' align='middle' height='32' width='32' alt='' />";
                $menu .= " " . $modversion['name'] . "</h4>\n";
            } else {
                $menu .= " " . $this->_header . "</h4>\n";
            }
        }
        if ($this->_subheader) {
            $menu .= "<div class='admin_subheader'>" . $this->_subheader . "</div>\n";
        }
        $menu .= '<div class="clear">&nbsp;</div>';
        unset($this->_obj);
        if ($display == true) {
            echo $menu;
        } else {
            return $menu;
        }
    }
}
