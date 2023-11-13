# frozen_string_literal: true

# class for PagesController in order to view controller actios
class PagesController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great'
    elsif @question.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
