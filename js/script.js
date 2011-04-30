/* Author: 

*/
(function ($) {
	var serviceUrl = 'http://localhost:27080/';
	$(function () {
		$.post(
			serviceUrl + "_connect", 
			"server=http://localhost:27017",
			function (result) {
				log(result);
				$('body').append($("div").text(result));
			}
		});
	})
}(jQuery));






















