class Answer < ApplicationRecord
  belongs_to :question

  validate :validate_number_of_answers

  scope :correct_answers, -> { where(correct: true) }

  private

  def validate_number_of_answers
    errors.add(:base, :invalid, message: "Question can't more than 4 answers!") if question.answers.count >= 4
  end
end
