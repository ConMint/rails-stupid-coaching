class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].present?
      @question = params[:question]
      if @question.include?('?')
        @response = 'Silly question, get dressed and go to work!'
      elsif @question.include?('work')
        @response = 'Great!'
      else
        @response = "I don't care, get dressed and go to work!"
      end
    end
  end
end
