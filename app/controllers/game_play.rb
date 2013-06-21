get '/board_info' do
  # board = Board.find_by_id(params[:boardId])

  # if board.check_board == nil
    content_type :json
    {:board => [nil,nil,nil,"x","o","x",nil,nil,nil], :turn => true}.to_json
    # "success"
  # else
    # "fail"
    # erb :_winner
  # end    
end

post '/board_info' do


end
