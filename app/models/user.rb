class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :comments
  has_many :cart_line_items
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
