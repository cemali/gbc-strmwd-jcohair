class HomeController < ApplicationController
  def index
    @users = User.all
    @message="55th Home Going To Heaven Pictorial &"
    @message1="Audio Memorial of"
    @message2="John Cowan O'Hair," 
    @message3="Pastor North Shore Church,"
    @message4="Chicago, IL - 1923 - 1958"
    
    
  end
end
