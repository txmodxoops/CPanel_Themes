/*
 * Default CPanel Admin Theme script 
 * Powered by Xoops (http://www.xoops.org)
 * 
 * Written by Txmod Xoops (webmaster@txmodxoops.org)
 * 
 * For more visit http://www.txmodxoops.org
 *
 */ 

// Starting the script on page load
$(document).ready(function(){
	// View tooltip
	//$('[data-toggle="tooltip"]').tooltip({ track: true });

	// Script to show and hide categories and images form of the section system image manager
	$(function() {
		$('div#xo-category-add').hide();
		$('button#xo-addcat-btn').on('click', function(e) {
			e.preventDefault();
			$("div#xo-category-add").toggle();
			$("div#xo-images-add").hide();
		});
		$('div#xo-images-add').hide();
		$('button#xo-addimg-btn').on('click', function(e) {
			e.preventDefault();
			$("div#xo-images-add").toggle();
			$("div#xo-category-add").hide();
		});
	});	
});