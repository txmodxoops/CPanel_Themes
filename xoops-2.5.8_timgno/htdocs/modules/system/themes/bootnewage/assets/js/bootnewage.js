$(document).ready(function(e) {	
	// perform JavaScript after the document is scriptable.	
	var navtabs = $('ul.nav.nav-tabs').tabs();
	$("div.panes > div").click(function( e ){
		e.preventDefault();
		var id = $(this).attr("href");
		var tab = navtabs.find("li [href='"+id+"']");
		if ( tab.length ) {
			var tabset = tab.closest('ul.nav.nav-tabs').tabs("select", id);
			if ( tabset.length ) {
				id = id.replace(/_[0-9]/,'');
				tabset.parents('ul.nav.nav-tabs').tabs("select", id );    
			}
		}
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
});