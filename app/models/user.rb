class User < ActiveRecord::Base
  include BCrypt
  has_many :player_1_boards, :foreign_key => "player_1_id", :class_name =>"Board" # May need to be player_1_id
  has_many :player_2_boards, :foreign_key => "player_2_id", :class_name =>"Board"
  has_many :games, :through => :boards

  attr_reader :entered_password

  # validates :entered_password, :length => { :minimum => 6 }
  # validates :email, :uniqueness => true, :format => /.+@.+\..+/

  def self.authenticate(params)
    user = User.find_by_email(params[:email])
    (user && user.password == params[:password]) ? user : nil
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @entered_password = new_password
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.create(params)
    p @user = User.new(params)
    p @user.password = params[:password]
    @user.save
    @user
  end

end
