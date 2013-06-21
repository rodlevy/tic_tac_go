$(document).ready(function() {
	// $("a#login-hook").on('click', function(event){
	// 	event.preventDefault();
	// 	var url = $(this).attr('href');
	// 	console.log(url);
	// 	$.get(url, function(url_response){
	// 		console.log(url_response);
	// 		$('.container').hide();
	// 		$('#login-hook').closest('div').append(url_response);
	// 	});

	// });
	
	// $('#nav').on('submit','#login-layout', function(event){
	// 	event.preventDefault();
	// 	var data = $(this).serialize();	
	// 	var url = $(this).attr('action');
	// 	console.log(data);
	// 	$.post(url, data, function(body){
	// 		var new_nav = $(body).find('#nav').html();
	// 		console.log(new_nav)
	// 		$('#login-layout').hide();
	// 		$('#nav').html(new_nav);
	// 		$('.container').show();
	// 	});
	// });
	

	// Get the element, add a click listener...
document.getElementById("parent-list").addEventListener("click",function(e) {
	// e.target is the clicked element!
	// If it was a list item
	if(e.target && e.target.nodeName == "LI") {
		// List item found!  Output the ID!
		console.log("List item ",e.target.id.replace("post-")," was clicked!");
	}
});
});




