class LettersController < ApplicationController
  before_action :load_letter, only: :show

  def index
    @letters = Letter.all
  end

  def show
    @letters = Letter.all
    @products = @letter.products
  end

  private
  def load_letter
    @letter = Letter.find_by char: params[:id]
    return if @letter

    flash[:danger] = "Letter not found"
    redirect_to root_path
  end
end
