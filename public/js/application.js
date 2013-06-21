function checker(){

	$.get('/board_info', {"boardId" : boardId}, function(response){
		return response;
	});
};

function boardUpdate(response){
	// response.table is an array
	// response.turn is t or f
}

$(document).ready(function() {
	// settimer every .5 sec GET check db for updated board and updated turn
	setInterval(checker, 50);
	document.getElementById("parent-list").addEventListener("click",function(e) {

	if(e.target && e.target.nodeName == "LI") {
		console.log("List item ",e.target.id.replace("post-")," was clicked!");


		// player 1 clicks p1 disabled click, box turns to x
		// post to db update board, update turn, 
		// check to see if there is a winner or if the board is full
	}
});
});




