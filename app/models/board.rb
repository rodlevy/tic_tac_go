class Board < ActiveRecord::Base
  belongs_to :game
  belongs_to :player_1, :class_name => "User"
  belongs_to :player_2, :class_name => "User"


  def check_board
    if self[0] == self[1] && self[1] == self[2] && !self[0].nil?
      return self[0] 

    elsif self[3] == self[4] && self[4] == self[5] && !self[3].nil?
      return self[3]

    elsif self[6] == self[7] && self[7] == self[8] && !self[6].nil?
      return self[6]

    elsif self[0] == self[4] && self[4] == self[8] && !self[0].nil?
      return self[0]

    elsif self[2] == self[4] && self[4] == self[6] && !self[2].nil?
      return self[2]

    elsif self[0] == self[3] && self[3] == self[6] && !self[0].nil?
      return self[0]
    elsif self[1] == self[4] && self[4] == self[7] && !self[1].nil?
      return self[1]
    elsif self[2] == self[5] && self[5] == self[8] && !self[2].nil?
      return self[2]  

    end 
  end
end
