class Question < ApplicationRecord
  has_many :responses
  belongs_to :survey, inverse_of: :questions, optional: true
  accepts_nested_attributes_for :responses, allow_destroy: true

  scope :open_ended_questions, -> { where(type: 'OpenEndedQuestion') }
  scope :single_choice_quesitons, -> { where(type: 'SingleChoiceQuestion') }
  scope :multiple_choice_questions, -> { where(type: 'MultipleChoiceQuestion') }
  scope :rating_questions, -> { where(type: 'RatingQuestion') }
end
