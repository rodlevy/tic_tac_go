var pturn = "player1";

function checker(){
	$.get('/board_info', {"boardId" : boardId}, function(response){
		boardUpdate(response.board);
		whoseTurn(response.turn);
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

function whoseTurn(turn){
	pturn = turn
}

function getData(){
	var array = [];
		for (var i = 0; i < $('#parent-list li').length + 1; i++){
		array[i-1] = $('#parent-list li:nth-child('+i+')').text();
		}
	return array	
}

$(document).ready(function() {
	// settimer every .5 sec GET check db for updated board and updated turn
	setInterval(checker, 1000);
	// if player 1 == true allow clicks
	// or for player 2 allow clicks

	$("#parent-list").on("click",function(e) {
	if(e.target && e.target.nodeName == "LI") {
		console.log("List item ",e.target.id.replace("post-")," was clicked!");
		$(e.target).text('x');
		getData();

		// $.ajax({
		// 	type: "POST",
		// 	url: "/board_info",
		// 	beforeSend: $(this).unbind('click'),
		// 	data: { "board" : array, "turn" : pturn},
		// })

		// var clicked = 
		// var board = 
		// $.post('/board_info', )


		// player 1 clicks p1 disabled click, box turns to x
		// post to db update board, update turn, 
		// check to see if there is a winner or if the board is full
	}
});
});

var array = []
for (var i = 0; i < $('#parent-list li').length + 1; i++){
	array[i-1] = $('#parent-list li:nth-child('+i+')').text();
}
