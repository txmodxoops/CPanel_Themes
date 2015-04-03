/*
 * Script for CPanel bootnewage admin theme
 *
 * Author Txmod Xoops http://www.txmodxoops.org
 */
$(document).ready(function(e) {	
	$('ul#tabNav').on('shown', function(e) {
		e.preventDefault();
		$(".nav, .nav-tabs a[data-toggle='tab']").attr('class',"active");
	});	
	
	// perform JavaScript after the document is scriptable.	
	var navtabs = $('ul.nav.nav-tabs.nav-module').tabs();
	$("div.panes > div").click(function( e ){
		e.preventDefault();
		var id = $(this).attr("href");
		var tab = navtabs.find("li [href='"+id+"']");
		if ( tab.length ) {
			var tabset = tab.closest('ul.nav.nav-tabs.nav-module').tabs("select", id);
			if ( tabset.length ) {
				id = id.replace(/_[0-9]/,'');
				tabset.parents('ul.nav.nav-tabs.nav-module').tabs("select", id );    
			}
		}
	});
	
	$(function() {
		// setup ul.nav.nav-tabs to work as nav-tabs for each div directly under div.panes
		$("ul.nav.nav-tabs").tabs("div.panes > div");
	});
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
	$(function () {	
		//Load Accordion
		$("#accordion > h5").bind("click", function(){
			$(".pane").slideUp("fast");
			if($(this).hasClass("current")){
				$(this).removeClass("current");
			}else{
				$("#accordion > h5").removeClass("current");
				$(this).addClass("current");
				$(this).next().slideDown("fast");
			}
		});	
	});
	$(function() {
		$(window).scroll(function() {
			if($(this).scrollTop() != 0) {
				$('#toTop').fadeIn();	
			} else {
				$('#toTop').fadeOut();
			}
		});
	 
		$('#toTop').click(function() {
			$('body,html').animate({scrollTop:0},800);
		});	
	});	
});