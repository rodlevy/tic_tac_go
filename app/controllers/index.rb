get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/board'  do
  
  erb :board
end

get '/board_info' do
  board = Board.find_by_id(params[:boardId])
  checkboard(board)
  content_type :json
  {:board => board.table, :turn => board.turn}.to_json
end

def checkboard(table)
  if table[0] == table[1] && table[1] == table[2] && !table[0].nil?
    return table[0] 

  elsif table[3] == table[4] && table[4] == table[5] && !table[3].nil?
    return table[3]

  elsif table[6] == table[7] && table[7] == table[8] && !table[6].nil?
    return table[6]

  elsif table[0] == table[4] && table[4] == table[8] && !table[0].nil?
    return table[0]

  elsif table[2] == table[4] && table[4] == table[6] && !table[2].nil?
    return table[2]

  elsif table[0] == table[3] && table[3] == table[6] && !table[0].nil?
    return table[0]
  elsif table[1] == table[4] && table[4] == table[7] && !table[1].nil?
    return table[1]
  elsif table[2] == table[5] && table[5] == table[8] && !table[2].nil?
    return table[2]  

end
