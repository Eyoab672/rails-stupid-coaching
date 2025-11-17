class QuestionsController < ApplicationController
  def ask
  end
  def answer
    if params[:question] == "I am going to work"
      @ans = "Great!"
    elsif params[:question].ends_with?("?")
     @ans =  "Silly question, get dressed and go to work!"
    else
     @ans = "I don't care, get dressed and go to work!"
    end
    @use = params[:question]
  end
end
