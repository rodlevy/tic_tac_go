$(document).ready(function() {

  $('#create').on('submit', function(event){ //might not need the function(event)
    $.post('/create_game', function(response){


    });

  });


});
