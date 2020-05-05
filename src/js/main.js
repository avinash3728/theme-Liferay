/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

/* eslint-disable prefer-arrow-callback */
AUI().ready(
	/*
	This function gets loaded when all the HTML, not including the portlets, is
	loaded.
	*/

	function() {
	}
);

Liferay.Portlet.ready(
	/*
	This function gets loaded after each and every portlet on the page.

	portletId: the current portlet's id
	node: the Alloy Node object of the current portlet
	*/

	function(portletId, node) {
	}
);

Liferay.on(
	'allPortletsReady',

	/*
	This function gets loaded when everything, including the portlets, is on
	the page.
	*/

	function() {
	}
);



$(window).load(function(){
	
	$("ul.nav.navbar-nav li a").each(function(i) {
        $(this).click(function() {
			$("ul.mega-menu").removeClass("display-mandatory");
			$(".glyphicon-triangle-top").hide();
			if($(this).next(".mega-menu").length > 0){
				$(this).next(".mega-menu").addClass("display-mandatory")
				$(this).find("span").show();
			}
        });
    }); 
		
	
	$(".openSideNavBar").click(function(){
		$("#myNavbar").addClass("navbar-panel-align");
	});
	
	$(".closeSideNavBar").click(function(){
		$("#myNavbar").removeClass("navbar-panel-align");
	});
	
	//footer bottom fix
	var contentHeight = $( window ).height() - $( "header" ).height() - $( "#footer" ).height();
	// -60 height to adjust scroll
	contentHeight -= 60;
	contentHeight += 'px';
	console.log("contentHeight :"+contentHeight);
	$( "#content" ).css('min-height', contentHeight);
	
	
	

});

$(document).ready(function(){
	$("li.dropdown").on("click", function(){
		if($(this).hasClass("open")){
			$("li.dropdown").find(".mega-menu").removeClass("display-mandatory");
			$(this).find("span.glyphicon-triangle-top").hide();
		}
	});
});

$(document).click( function(){
	$("li.dropdown").find(".mega-menu").removeClass("display-mandatory");
	$("li.dropdown").find("span.glyphicon-triangle-top").hide();
});