class User < ApplicationRecord
  has_many :xmls
  # has_many :bookmarks
  act_as_bookmarker
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
