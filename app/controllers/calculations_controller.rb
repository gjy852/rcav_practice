class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @id = params[:id]
    @square = @id.to_i ** 2
  end

  def square_root
    @id = params[:id]
    @square_root = Math.sqrt (@id.to_i)
  end

  def random
  end

  def payment
  end
end
