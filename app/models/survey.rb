class Survey < ApplicationRecord
  has_many :questions
  has_many :responses, through: :questions
  belongs_to :owner, class_name: "User"
  accepts_nested_attributes_for :questions, allow_destroy: true
end
