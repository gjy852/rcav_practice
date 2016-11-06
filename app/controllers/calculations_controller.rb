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
    @interest_rate = params[:interest_rate].to_f
    @number_of_years = params[:number_of_years].to_i
    @principal_value = params[:principal_value].to_i

    @interest_rate_decimal = @interest_rate / 10000
    rate = @interest_rate_decimal / 12
    nper = @number_of_years * 12

    @monthly_payment = (rate * @principal_value)/(1 - (1 + rate)**-nper)

  end
end
