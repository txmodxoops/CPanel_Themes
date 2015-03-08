<?php
/*
 You may not change or alter any portion of this comment or credits
 of supporting developers from this source code or any supporting source code
 which is considered copyrighted (c) material of the original comment or credit authors.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*/

/**
 * XOOPS breadcrumbs navigation
 *
 * @copyright   The XOOPS Project http://sourceforge.net/projects/xoops/
 * @license     GNU GPL 2 (http://www.gnu.org/licenses/old-licenses/gpl-2.0.html)
 * @package     class
 * @since       2.5.7
 * @author      Txmod Xoops (AKA Timgno)
 * @version     $Id: breadcrumbs.php 12991 2015-02-28 11:18:20Z timgno $
 */

defined('XOOPS_ROOT_PATH') or die('Restricted access');

class Breadcrumbs
{
    /**
     * *#@+
     *
     * @access private
     */
    /**
     * @var array
     */
    private $_trail = array();
    /**
     * *#@-
     */

    /**
     * Constructor
     *
     * @param null
     */
    public function __construct() { }

    /**
     * Create step navigation
     *
     * @param string $title
     * @param string $link   
     * @return string
     */
    public function addStep($title, $link = "")
    {        
        $this->_trail[] = array('title' => $title, 'link' => $link);
    }
	
	/**
     * Get trail navigation
     *
     * @return array
     */
    public function getTrail()
    {        
        return $this->_trail;
    }

    /**
     * Get title navigation
     *
     * @return array
     */
    public function getTitle()
    {        
        if(count($this->_trail) == 0)
			return null;
		
		return $this->_trail[count($this->_trail)- 1]['title'];
    }
}