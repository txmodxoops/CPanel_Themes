//Load Metis Menu
$(function() {
    $('#side-menu').metisMenu();
});

//Loads the correct sidebar on window load,
//collapses the sidebar on window resize.
// Sets the min-height of #page-wrapper to window size
$(function() {
    $(window).bind("load resize", function() {
        topOffset = 50;
        width = (this.window.innerWidth > 0) ? this.window.innerWidth : this.screen.width;
        if (width < 768) {
            $('div.sidebar-nav.navbar-collapse').addClass('collapse');
            topOffset = 150; // 3-row-menu
        } else {
            $('div.sidebar-nav.navbar-collapse').removeClass('collapse');
        }

        height = ((this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height) - 1;
        height = height - topOffset;
        if (height < 1) height = 1;
        if (height > topOffset) {
            $("#page-wrapper").css("min-height", (height) + "px");
        }
    });

    var url = window.location;
    var element = $('ul.nav a').filter(function() {
        return this.href == url || url.href.indexOf(this.href) == 0;
    }).addClass('active').parent().parent().parent().addClass('in').parent();
    if (element.is('li')) {
        element.addClass('active');
    }
});
//Load Accordion
$(function() {
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
// perform JavaScript after the document is scriptable.
$(function() {
	// setup ul.tabs to work as tabs for each div directly under div.panes
	$("ul.tabs").tabs("div.panes > div");
});
// perform JavaScript DataTable
$(function() {
	$('#dataTables').DataTable({
		responsive: true
	});
});
