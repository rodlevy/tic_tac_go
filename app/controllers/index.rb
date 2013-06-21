get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/board'  do

  @board = Board.find_by_id(1)
  p @board.table
  # erb :board

end


get '/lobby' do
  @games = Game.all

  erb :lobby
end

get '/create_game' do
end

post '/create_game' do
  @game = Game.create(:title => params[:title])
  puts session[:user_id].inspect
  @board = Board.create(:player_1_id => session[:user_id], :game_id => @game.id )

  erb :board 
end

get '/join_game/:id' do
  #@board
  @board = Board.find_by_game_id(params[:id])
  @board.player_2_id = session[:user_id] #this won't work for testing??
  erb :board
end


