get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/board'  do
  
  erb :board
end

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

get '/lobby' do

  erb :lobby
end

get '/create_game' do
end

post '/create_game' do
  @game = Game.create(:title => params[:title])
  @board = Board.create(:player1 => current_user.id, :game_id => @game.id )

  redirect '/board'
end

get '/join_game' do

  erb :board
end


