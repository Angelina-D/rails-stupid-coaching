class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = determine_answer
  end

  def determine_answer
    if params[:question] == 'I am going to work'
      'Great'
    elsif params[:question].include? '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
