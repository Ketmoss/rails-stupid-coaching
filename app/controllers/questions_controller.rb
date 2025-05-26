class QuestionsController < ApplicationController
  def ask
  end

  def answer
    user_input = params[:question]
    if user_input == "I am going to work"
      @answer = "Great!"
    elsif user_input.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end

    @question = user_input
  end
end
