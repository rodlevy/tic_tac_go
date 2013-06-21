get '/board_info' do
  # board = Board.find_by_id(params[:boardId])

  # board.player1
  # board.player2
  # if board.check_board == nil
    content_type :json
    {:board => [nil,nil,nil,"x","o","x",nil,nil,nil], :turn => true, 
              :player1 => 1, :player2 => 2 }.to_json
    # "success"
  # else
    # "fail"
    # erb :_winner
  # end    
end

post '/board_info' do


end
