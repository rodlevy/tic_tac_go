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
  @board = Board.create(:player1 => current_user.id, :game_id => @game.id )

  redirect '/board'
end

get '/join_game' do

  erb :board
end


