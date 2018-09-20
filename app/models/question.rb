class Question < ApplicationRecord
  has_many :responses
  belongs_to :survey
  accepts_nested_attributes_for :responses, allow_destroy: true
end
