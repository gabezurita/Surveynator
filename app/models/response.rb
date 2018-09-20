class Response < ApplicationRecord
  belongs_to :question
  belongs_to :respondant, class_name: "User"
end
