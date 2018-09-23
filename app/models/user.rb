class User < ApplicationRecord
  has_many :surveys, foreign_key: :owner_id
  has_many :responses, foreign_key: :responder_id
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
