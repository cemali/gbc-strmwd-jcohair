class User < ActiveRecord::Base
#HEAD
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false
#658b54c3fe69a1a099d15c76b8fb43303719bfed
end
