get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/board'  do
  
  erb :board
end



