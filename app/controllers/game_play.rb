get '/board_info' do
  board = Board.find_by_id(1)

  # board.player1
  # board.player2
  # if board.check_board == nil
    content_type :json
    {:board => board, :turn => board.turn, 
              :player1 => board.player_1_id, :player2 => board.player_2_id }.to_json
    # "success"
  # else
    # "fail"
    # erb :_winner
  # end    
end

post '/board_info' do


end
