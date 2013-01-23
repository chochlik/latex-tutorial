class Lesson < ActiveRecord::Base
  attr_accessible :description, :answer, :question

  validates :description, presence: true
  validates :answer, presence: true

  def validate_answer(answer)
    @answer_given = answer

    if answer == self.answer
      @answer_correct = true
    end
  end

  def answer_given?
    @answer_given.present?
  end

  def answer_correct?
    @answer_correct.present?
  end

  def answer_given
    @answer_given
  end
end
