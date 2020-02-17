class QuestionsController < ApplicationController
  def coach_answer(user_message)
    if user_message == 'I am going to work right now!'
      'Great!'
    elsif user_message.include? '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def ask; end

  def answer
    @question = params['question']
    @answer = coach_answer(@question)
  end
end
