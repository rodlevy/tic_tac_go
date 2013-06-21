class Board < ActiveRecord::Base
  belongs_to :game
  belongs_to :player_1, :class_name => "User"
  belongs_to :player_2, :class_name => "User"
end
