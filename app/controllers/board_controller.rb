class BoardController < ApplicationController
  before_filter :validate_user

  def new

  end

  def show
      @boards = Board.all
  end

end
