class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answers = answers()
  end

  private
  
  def answers
    if @question == 'I am going to work'
      'Great!'
    elsif @question.to_s.last == "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
