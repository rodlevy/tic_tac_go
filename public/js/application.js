var pturn = "true";

function checker(){
	$.get('/board_info', {"boardId" : boardId}, function(response){
		boardUpdate(response.board);
		switchTurn(response.turn);
	});
};

function boardUpdate(array){
	array.forEach(plugIn)
}

function plugIn(element, index){
	if (element != null){
	$('#post-'+index).text(element);
	}
}

function switchTurn(turn){
	pturn = turn
}

$(document).ready(function() {
	// settimer every .5 sec GET check db for updated board and updated turn
	setInterval(checker, 5000);
	// if player 1 == true allow clicks
	// or for player 2 allow clicks
	$("#parent-list").on("click",function(e) {
	if(e.target && e.target.nodeName == "LI") {
		console.log("List item ",e.target.id.replace("post-")," was clicked!");

		// var clicked = 
		// var board = 
		// $.post('/board_info', )


		// player 1 clicks p1 disabled click, box turns to x
		// post to db update board, update turn, 
		// check to see if there is a winner or if the board is full
	}
});
});




