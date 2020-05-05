/**
 * Author - Rahul Goel
 * This is the code to disable the browser back button across the modules
 */

history.pushState(null, null, location.href);
window.onpopstate = function() {
	history.go(1);
};

// $(window).load(function() {
//     setTimeout(function() {
//         let breadcrumbText = $('div[class*="breadcrumb"]').text().split(">")[1].trim();
//         breadcrumbText = breadcrumbText.replace("and", "&");
//         let menuItem = $('.nav-wrapper li:first:contains("'+ breadcrumbText + '")');
//         if(menuItem.length > 0) {
//             if(menuItem.children(".glyphicon-triangle-top").length === 0){
//                 let highlighter = $("<span/>").addClass("glyphicon glyphicon-triangle-top highlight-menu").attr("style", "display:none");
//                 menuItem.append(highlighter);
//             } else {
//                 menuItem.find(".glyphicon-triangle-top").addClass("highlight-menu-item");
//             }
//         }
//     }, 3000);
// });

function parseResponse(data, col, splitText) {
	return data.map(item => {
		let obj = item;
		obj[col] = obj[col].split(splitText);
		return obj;
	});
}

function highlightTopMenu(module) {
	setTimeout(
		function() {
			if ($.grep($(".header-top-bar .navbar-nav.hidden-sm li").length > 0)) {
				let node = $.grep(
					$(".header-top-bar .navbar-nav.hidden-sm li"),
					item =>
						$(item)
							.text()
							.trim()
							.toLowerCase() === module
				);
				if (node.length > 0) {
					$(".header-top-bar .navbar-nav.hidden-sm li").removeClass("active-section");
					$(node)
						.find("a")
						.addClass("active-section");
				} else {
					$(".header-top-bar .navbar-nav.hidden-sm li").removeClass("active-section");
				}
			}
		}.bind(this),
		1000
	);
}
