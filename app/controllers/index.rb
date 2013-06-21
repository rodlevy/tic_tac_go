get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/board'  do
  
  erb :board
end


get '/lobby' do

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

get '/join_game' do

  erb :board
end


