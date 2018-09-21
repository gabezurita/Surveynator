class Question < ApplicationRecord
  has_many :responses
  belongs_to :survey
  accepts_nested_attributes_for :responses, allow_destroy: true

  scope :open_ended, -> { where(type: 'OpenEndedQuestion') }
  scope :single_choice, -> { where(type: 'SingleChoiceQuestion') }
  scope :multiple_choice, -> { where(type: 'MultipleChoiceQuestion') }
  scope :rating, -> { where(type: 'RatingQuestion') }
end
