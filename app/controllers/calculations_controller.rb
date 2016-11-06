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
    minimum_number = params[:first_id]
    maximum_number = params[:second_id]
    @min = minimum_number
    @max = maximum_number
    @random_number = rand(@min.to_i..@max.to_i)
  end

  def payment
  end
end
