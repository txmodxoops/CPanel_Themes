<?php 
/** 
* Smarty plugin 
* @package Smarty 
* @subpackage plugins 
*/ 

/** 
* Smarty {breadcrumbs} function plugin 
* 
* Type:      function<br> 
* Name:      breadcrumbs<br> 
* Date:      March 7, 2015 
* Purpose:   Prints breadcrumbs based on the parameters<br> 
* Input:<br> 
*         - trail      = index for the trail item 
*         - separator  = how many items there are on a separator
*         - truncate   = total number of items 
* 
* Examples: 
* <div class="breadcrumbs"> 
* 	<{breadcrumbs trail=$breadcrumbs->getTrail() separator=' &raquo; '}> 
* </div> 
* 
* @version    1.0 
* @author     Txmod Xoops - <txmodxoops at gmail dot org | www.txmodxoops.org> 
*
* @param      params 
* @param      smarty 
* @return     string 
*/ 

function smarty_function_breadcrumbs($params, &$smarty) 
{ 
	$defaultParams = array('trail' => array(), 'separator' => ' &gt; ', 'truncate' => 20);
	// Inizialize the parameters
	foreach ($defaultParams as $k => $v) {		
		if(!isset($params[$k])) {
			$params[$k] = $v;
		}
	}
	// Load the truncate modifier
	if($params['truncate'] > 0) {
		require_once $smarty->_get_plugin_filepath('modifier', 'truncate');
	}
	$links = array();
	$numSteps = count($params['trail']);
	for($i = 0; $i < $numSteps; $i++) {
		$step = $params['trail'][$i];
		// Truncate title if required
		$step['title'] = smarty_modifier_truncate($step['title'], $params['truncate']);
		// Build link if it's set and isn't the last step
		if(strlen($step['link']) > 0 && $i < $numSteps - 1) {
			$links[] = sprintf('<a href="%s" title="%s">%s</a>', htmlspecialChars($step['link']), htmlspecialChars($step['title']), htmlspecialChars($step['title']));
		} else {
			// Either the link isn't set, or it's the last step
			$links[] = htmlspecialChars($step['title']);
		}
	}
	$breadcrumbs = join($params['separator'], $links);
	$smarty->assign("breadcrumbs", $breadcrumbs);
}